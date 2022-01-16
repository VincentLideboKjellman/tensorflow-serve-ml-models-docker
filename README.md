# tensorflow-serve-ml-models-docker
Serve a ML model with Tensorflow serving with docker


How to run:

install python
install docker

docker run -p 8501:8501 --name tfserving_classifier \
--mount type=bind,source=/Users/server/img_classifier/,target=/models/img_classifier \
-e MODEL_NAME=img_classifier -t tensorflow/serving

Change Users/server to your path where you cloned the repository

run: python3 predict.py to call on the endpoint
