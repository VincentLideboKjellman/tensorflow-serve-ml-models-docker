FROM tensorflow/tensorflow:2.5.1
FROM tensorflow/serving:latest
FROM python:3

COPY requirements.txt / 
RUN python3 -m pip install -r /requirements.txt

COPY . /app
WORKDIR /app

EXPOSE 8501
CMD [ "python" , "predict.py" ]