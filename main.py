# Import Flask and jsonify
from flask import Flask, jsonify

# Create an instance of the Flask app
app = Flask(__name__)


# Define the index route
@app.route("/")
def index():
    # Return a welcome message
    return jsonify({"message": "Welcome to the quiz API!"})


# Run the app in debug mode
if __name__ == "__main__":
    app.run(debug=True)
