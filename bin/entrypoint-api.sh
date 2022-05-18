#!/bin/sh

# Entrypoint for api server
exec /production/otter_v2_service/persistent/virtualenv/bin/gevent-wsgi otter_v2_service.server:app
