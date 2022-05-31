#!/bin/sh

# Entrypoint for api server
exec /production/demo_service/persistent/virtualenv/bin/gevent-wsgi demo_service.server:app
