"""
SQLAlchemy Base, engines e session factories para o XDEFENSE.
Suporta SQLite (por arquivo) e PostgreSQL (banco único + schemas).
"""
from contextlib import contextmanager
from typing import Generator

from sqlalchemy import create_engine, event
from sqlalchemy.orm import DeclarativeBase, sessionmaker, Session
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
import config


class Base(DeclarativeBase):
    pass


_engines: dict = {}
_session_factories: dict = {}


def _schema_key(db_name: str) -> str:
    return db_name.lower()


def get_engine(db_name: str):
    """Retorna (ou cria) o SQLAlchemy engine para o schema/banco indicado."""
    key = _schema_key(db_name)
    if key not in _engines:
        url = config.database_url(key)
        kwargs: dict = {"echo": False}

        if config.DB_ENGINE in ("postgres", "postgresql"):
            # PostgreSQL: search_path via connect_args
            kwargs["connect_args"] = config.connect_args(key)
        else:
            # SQLite: busy timeout + thread safety
            kwargs["connect_args"] = config.connect_args(key)

        engine = create_engine(url, **kwargs)

        # SQLite: ativar WAL mode para leituras concorrentes
        if config.DB_ENGINE == "sqlite":
            @event.listens_for(engine, "connect")
            def _set_wal(dbapi_conn, _):
                dbapi_conn.execute("PRAGMA journal_mode=WAL")
                dbapi_conn.execute("PRAGMA busy_timeout=15000")

        _engines[key] = engine
    return _engines[key]


def get_session(db_name: str) -> Session:
    """Retorna uma nova sessão SQLAlchemy para o schema indicado."""
    key = _schema_key(db_name)
    if key not in _session_factories:
        engine = get_engine(key)
        _session_factories[key] = sessionmaker(bind=engine)
    return _session_factories[key]()


@contextmanager
def session_scope(db_name: str) -> Generator[Session, None, None]:
    """Context manager com escopo transacional."""
    session = get_session(db_name)
    try:
        yield session
        session.commit()
    except Exception:
        session.rollback()
        raise
    finally:
        session.close()
