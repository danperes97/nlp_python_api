from flask import Flask, request
from flask_restful import Resource, Api
from json import dumps

app = Flask(__name__)
api = Api(app)

import nltk
import spacy

def hashfy(ent):
    return { 'text': ent.text, 'label': ent.label_ }

class Nlp(Resource):
    def get(self):
        nlp = spacy.load("model_test.md")
        text = nlp(request.args.get('query'))

        return { 'ents': map(hashfy, text.ents) }

api.add_resource(Nlp, '/entity_recognition')

if __name__ == '__main__':
     app.run(host='0.0.0.0', port='3000')
