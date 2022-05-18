#!/bin/sh

# Entrypoint for worker
exec /production/otter_v2_service/persistent/virtualenv/bin/python /production/otter_v2_service/current/otter_v2_service/otter_v2_service/worker.py