from crypt import methods
from distutils.log import debug
import json
from flask import Flask, request

app = Flask(__name__)

@app.route('/users')
def get_users():
    '''
    Connect to db
    Do the select query to database
    Close connection when already used db
    '''

    data = [
        {
            "name": "udin",
            "address": "sleman"
        },
        {
            "name": "udin2",
            "address": "kaliurang"
        },
        {
            "name": "udin3",
            "address": "monjali"
        }
    ]
    response = app.response_class(
        response=json.dumps(data),
        status=200,
        mimetype='application/json'
    )
    return response

@app.route('/users/<int:id>')
def get_user_by_id(id):
    '''
    Connect to db
    Do the select query to database
    Close connection when already used db
    '''

    data = {
            "name": "udin",
            "address": "sleman"
        }
    response = app.response_class(
        response=json.dumps(data),
        status=200,
        mimetype='application/json'
    )
    return response

@app.route('/users', methods=['POST'])
def register_user():
    '''
    Connect to db
    Do the select query to database
    Close connection when already used db
    '''

    # Default response and status
    response = {
        "description": "user has been created successfully"
    }
    status = 201
    
    # Get request data
    data = request.get_json()
    # Check request data
    if not "name" in data or not "address" in data:
        # Response and status for bad request
        response = {
            "description": "malformed data"
        }
        status = 400
        response = app.response_class(
            response=json.dumps(response),
            status=status,
            mimetype='application/json'
        )
        return response
    
    # Response and status for success request
    response = app.response_class(
            response=json.dumps(response),
            status=status,
            mimetype='application/json'
        )
    return response

@app.route('/users', methods=['PUT'])
def edit_user():
    '''
    Connect to db
    Do the select query to database
    Close connection when already used db
    '''

    # Default response and status
    response = {
        "description": "user has been updated successfully"
    }
    status = 200

    # Get request
    data = request.get_json()
    
    # Response and status for success request
    response = app.response_class(
            response=json.dumps(response),
            status=status,
            mimetype='application/json'
        )
    return response

@app.route('/users', methods=['PATCH'])
def edit_user_by_field():
    '''
    Connect to db
    Do the select query to database
    Close connection when already used db
    '''

    # Default response and status
    response = {
        "description": "user has been updated successfully"
    }
    status = 200

    # Get request
    data = request.get_json()
    
    # Response and status for success request
    response = app.response_class(
            response=json.dumps(response),
            status=status,
            mimetype='application/json'
        )
    return response

@app.route('/users', methods=['DELETE'])
def delete_user():
    '''
    Connect to db
    Do the select query to database
    Close connection when already used db
    '''
    
    # Default response and status
    response = {
        "description": "user has been deleted successfully"
    }
    status = 200
    
    # Response and status for success request
    response = app.response_class(
            response=json.dumps(response),
            status=status,
            mimetype='application/json'
        )
    return response

if __name__ == '__main__':
    app.run(debug=True, port=5055)