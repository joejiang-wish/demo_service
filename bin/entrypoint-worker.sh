#!/bin/sh

# Entrypoint for worker
exec /production/demo_service/persistent/virtualenv/bin/python /production/demo_service/current/demo_service/demo_service/worker.py