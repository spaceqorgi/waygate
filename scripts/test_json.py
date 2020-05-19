import requests
import json

response = requests.get('http://127.0.0.1:8000/api/chapter/1/?format=json')
print(response.json())

