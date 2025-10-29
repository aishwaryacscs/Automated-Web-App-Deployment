from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "🚀 Automated Web App Deployment - Version 1.0"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
