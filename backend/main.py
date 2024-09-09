from flask import Flask, jsonify, request
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

@app.route('/')
def index():
    return jsonify({"message": "Welcome to the Flask Backend API"})

@app.route('/analyze_shot', methods=['POST'])
def analyze_shot():
    # Placeholder for shot analysis logic
    # You can implement the actual logic here or call a function from utils.py
    return jsonify({"message": "Shot analysis endpoint"})

if __name__ == '__main__':
    app.run(debug=True)