from flask import Flask
import json
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

@app.route('/name/<name>')
def hello_world2(name):
    return json.dumps({"name" : name})
    #return 'Hello, Name!' + name


if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=5000)