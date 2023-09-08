from flask import Flask
from flask import request
from jinja2 import Template
from flask import render_template_string

app = Flask(__name__)



@app.route("/")
def index():
    if request.args.get('name'):
        template = '<h2>Hello %s!</h2>' %request.args.get('name')
    else:
        template = '<h2>What is your name?</h2>'
    t = Template(template)
    return render_template_string(template)
if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=True, port=8080)
