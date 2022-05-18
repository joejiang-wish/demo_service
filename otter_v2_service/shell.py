from wish_flask.shell import ipshell, VariableCollector
from otter_v2_service.server import app
try:
    from flask_mongoengine import Document
except:
    Document = object


ipshell(
    app,
    var_collectors=[
        VariableCollector(
            'otter_v2_service.models',
            class_types=[Document],
            collect_subclasss=True
        )
    ]
)

# Try running this script by:
#    >> FLASK_ENV=dev python otter_v2_service/shell.py
