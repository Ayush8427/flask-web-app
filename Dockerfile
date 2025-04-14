#install python software
FROM python:3.14.0a2-slim

#create a folder

WORKDIR /flaskapp

# COPY the file requirements.txt and app.py

COPY app.py requirements.txt /flaskapp/

#installing flask 
RUN pip install -r requirements.txt

# Run flask app

CMD [ "python", "app.py" ]