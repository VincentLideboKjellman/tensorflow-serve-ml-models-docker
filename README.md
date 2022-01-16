# tensorflow-serve-ml-models-docker
Serve a ML model with Tensorflow serving with docker


How to run:

install python

install docker

docker run -p 8501:8501 --name tfserving_classifier \
--mount type=bind,source=/Users/server/img_classifier/,target=/models/img_classifier \
-e MODEL_NAME=img_classifier -t tensorflow/serving

Change Users/server to your path where you cloned the repository

install dependencies with pip install

run: python3 predict.py to call on the endpoint when docker is running



The model.py script trains and creates a model based on tensorflow Keras Sequential CNN (used for imagery prediction) its already saved in the repo.

When the docker container is running on the img_classifier you should be able to run the predict.py script to call on the endpoint. and recieve a outputin the console.
