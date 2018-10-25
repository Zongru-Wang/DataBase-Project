#!/usr/bin/env python

from __future__ import print_function

from flask import Flask, Response
import json
from routes import index
from routes import tasks

app = Flask(__name__)
app.register_blueprint(index.routes)
app.register_blueprint(tasks.routes)


@app.errorhandler(404)
def page_not_found(e):
    return Response(json.dumps({'msg': 'route not found'}), status=404, mimetype='application/json')

if __name__ == '__main__':
    app.run()
