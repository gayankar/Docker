FROM python:3.10.6
RUN apt update -y
RUN pip3 install --upgrade pip  
WORKDIR /app/flask
ADD . /app/flask/
RUN pip3 install -r requirements.txt
ENV FLASK_APP=flaskr
ENV FLASK_ENV=developmemt 
CMD ["flask", "run", "--port=80", "--host=0.0.0.0"]
EXPOSE 5000
