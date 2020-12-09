
# Dependencies
from flask import Flask, request, jsonify
import traceback
import pandas as pd
import numpy as np
import joblib
from joblib import dump,load
from sklearn import cluster
# Your API definition
app = Flask(__name__)

@app.route('/predict',  methods=['GET','POST'])
def predict():
    if lr:
        try:
            json_ = request.json
            print('data = ',json_)
            print('predict start!')
            query = pd.DataFrame(json_, index=[0])
            prediction = list(lr.predict(query))
            print('predict end!')
            return jsonify({'prediction': str(prediction)})

        except:

            return jsonify({'trace': traceback.format_exc()})
    else:
        print ('Train the model first')
        return ('No model here to use')

if __name__ == '__main__':
    try:
        port = int(sys.argv[1]) # This is for a command-line input
    except:
        port = 5000 # If you don't provide any port the port will be set to 5000

    model_path = './model/kmeans.pkl'
    lr = joblib.load(model_path) # Load "model.pkl"
    print('model_path = ',model_path)
    print ('Model loaded!')

    app.run(port=port, debug=True)