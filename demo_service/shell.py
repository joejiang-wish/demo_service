from wish_flask.shell import ipshell, VariableCollector
from demo_service.server import app
try:
    from flask_mongoengine import Document
except:
    Document = object


ipshell(
    app,
    var_collectors=[
        VariableCollector(
            'demo_service.models',
            class_types=[Document],
            collect_subclasss=True
        )
    ]
)

# Try running this script by:
#    >> FLASK_ENV=dev python demo_service/shell.py
