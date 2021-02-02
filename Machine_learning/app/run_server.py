# USAGE
# Start the server:
# 	python run_server.py
# Submit a request via cURL:
# 	curl -X POST -F image=@dog.jpg 'http://localhost:5000/predict'
# Submita a request via Python:
#	python simple_request.py

# import the necessary packages
import numpy as np
import dill
import pandas as pd
dill._dill._reverse_typemap['ClassType'] = type
import os
import flask
import logging
from logging.handlers import RotatingFileHandler
from time import strftime

app = flask.Flask(__name__)
model = None

handler = RotatingFileHandler(filename='../app.log', maxBytes=100000, backupCount=10)
logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)
logger.addHandler(handler)

def load_model(model_path):
	# load the pre-trained model
	global model
	with open(model_path, 'rb') as f:
		model = dill.load(f)
	print(model)

modelpath = f"{os.path.abspath(os.getcwd())}/app/models/model.dill"
load_model(modelpath)

@app.route("/", methods=["GET"])
def general():
	return "Welcome to price prediction process"

@app.route("/predict", methods=["POST"])
def predict():
	# initialize the data dictionary that will be returned from the
	# view
	data = {"success": False}
	dt = strftime("[%Y-%b-%d %H:%M:%S]")
	# ensure an image was properly uploaded to our endpoint
	if flask.request.method == "POST":
		district, rooms, square, lifesquare, kitchensquare,\
			floor, housefloor, houseyear= '', '', '', '', '','', '',''
		request_json = flask.request.get_json()

		if request_json['DistrictId']:
			district = request_json['DistrictId'][0]
		if request_json['Rooms']:
			rooms = request_json['Rooms'][0]
		if request_json["Square"]:
			square = request_json['Square'][0]
		if request_json["LifeSquare"]:
			lifesquare = request_json['LifeSquare'][0]
		if request_json["KitchenSquare"]:
			kitchensquare = request_json['KitchenSquare'][0]
		if request_json["Floor"]:
			floor = request_json['Floor'][0]
		if request_json["HouseFloor"]:
			housefloor = request_json['HouseFloor'][0]
		if request_json["HouseYear"]:
			houseyear = request_json['HouseYear'][0]
		logger.info(f'{dt} Data: DistrictId={district}, rooms={rooms}, square={square}')
		try:
			predictions = model.predict(pd.DataFrame({'DistrictId':[float(district)],
													  "Rooms": [float(rooms)],
													  "Square": [float(square)],
													  'LifeSquare': [float(lifesquare)],
													  'KitchenSquare': [float(kitchensquare)],
													  'Floor': [float(floor)],
													  'HouseFloor': [float(housefloor)],
													  'HouseYear': [float(houseyear)]}))
		except AttributeError as e:
			logger.warning(f'{dt} Exception: {str(e)}')
			data['predictions'] = str(e)
			data['success'] = False
			return flask.jsonify(data)

		data["predictions"] = predictions[0]
		data["rooms"] = rooms
		data['square'] = square
		data['houseyear'] = houseyear
		# indicate that the request was a success
		data["success"] = True

	# return the data dictionary as a JSON response
	return flask.jsonify(data)

# if this is the main thread of execution first load the model and
# then start the server
if __name__ == "__main__":
	print(("* Loading the model and Flask starting server..."
		"please wait until server has fully started"))

	port = int(os.environ.get('PORT', 8180))
	app.run(host='0.0.0.0', debug=True, port=port)