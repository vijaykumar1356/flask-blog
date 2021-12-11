import datetime
from flask import Flask

app = Flask(__name__)


@app.route('/api/v1/time')
def index():
    return {'time': datetime.datetime.utcnow()}
