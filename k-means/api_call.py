import requests
import json
import numpy as np
json_data = [{'sepal length': 6.0, 'sepal width': 2.2, 'petal length': 4.0, 'petal width': 1.0}]
req = requests.post('http://127.0.0.1:5000/predict', json=json_data)
print(req.text)
resp_dict = json.loads(req.text)
print("resp_dict['prediction'] = ",resp_dict['prediction'])
pred_num = 0
for txt in resp_dict['prediction']:
    try:
        if int(txt):
            pred_num = int(txt)
    except:
        print()
print('pred_class = ',pred_num)