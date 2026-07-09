"""Python worker daemon — Phase 1 placeholder.

Importers are triggered on-demand (via scheduler or CLI).
Phase 7 will replace this with a RabbitMQ consumer loop.
"""
import signal
import time

_running = True


def _stop(sig, frame):
    global _running
    _running = False


signal.signal(signal.SIGTERM, _stop)
signal.signal(signal.SIGINT, _stop)

print("[python-worker] ready — waiting for import jobs (RabbitMQ in Phase 7)", flush=True)
while _running:
    time.sleep(10)
print("[python-worker] shutting down", flush=True)
