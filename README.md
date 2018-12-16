# nlp_python_api
A Natural language processing API using Python

### How to train a model
 Train a new model using nlp_python_api its an easy task. You just need a xlsx file.
 You will create two columns: Examples and Entities, just like this:
 
|  Examples        |Entities                       |
|------------------|-------------------------------|
|Gyms with Dance in Sao Paulo|[(9, 14, 'EVENT'), (19, 28, 'LOC')] |

In this example 'Dance' is an EVENT, and Sao paulo its a LOCATION. This labels were created using SPACY
lib of Python. https://spacy.io/api/annotation#named-entities

To run and apply modifications you can run:
  > python gym_train.py -m en -o model_test.md -f teste.xlsx -sh teste
  
Witch, '-m' is the base model, in this case en, and '-o' the new model, '-f' the filename of Excel file, and '-sh'
the sheetname.

### How to consume API
  To consume API and check phrase entity recognition you just need to run:
   > python application_controller.py
   
