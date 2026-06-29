-- PostgreSQL DDL — schema: xticket
-- Sistema de tickets (helpdesk/ITSM).
-- Extraído de xorcism_ts/server/db.ts:ensureTicketDb()

SET search_path = "xticket", public;

CREATE TABLE IF NOT EXISTS TICKET (
  TicketID        INTEGER PRIMARY KEY,
  TicketGUID      TEXT, TicketNumber TEXT, Subject TEXT, Description TEXT,
  Status          TEXT, Priority TEXT, Severity TEXT, TicketType TEXT, CategoryID INTEGER,
  RequesterName   TEXT, RequesterEmail TEXT, AssigneeName TEXT, Tags TEXT,
  CreatedDate     TEXT, UpdatedDate TEXT, DueDate TEXT, ResolvedDate TEXT, ClosedDate TEXT,
  Resolution      TEXT
);

CREATE TABLE IF NOT EXISTS TICKETCOMMENT (
  TicketCommentID   INTEGER PRIMARY KEY,
  TicketCommentGUID TEXT, TicketID INTEGER, Author TEXT, Body TEXT,
  IsInternal        INTEGER, CreatedDate TEXT
);

CREATE TABLE IF NOT EXISTS TICKETCATEGORY (
  TicketCategoryID   INTEGER PRIMARY KEY,
  TicketCategoryName TEXT, Description TEXT, CreatedDate TEXT
);

CREATE TABLE IF NOT EXISTS TICKETATTACHMENT (
  TicketAttachmentID INTEGER PRIMARY KEY,
  TicketID           INTEGER, FileName TEXT, FilePath TEXT, CreatedDate TEXT
);

CREATE INDEX IF NOT EXISTS ix_ticketcomment_ticket    ON TICKETCOMMENT(TicketID);
CREATE INDEX IF NOT EXISTS ix_ticketattachment_ticket ON TICKETATTACHMENT(TicketID);
