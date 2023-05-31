FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7
RUN apk update && apk add git
RUN mkdir -p /home/flask_tutorial
WORKDIR /home/flask_tutorial
RUN git clone https://github.com/gayankar/flask_tutorial.git
RUN ls
RUN mv /home/flask_tutorial/flask_tutorial /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available /etc/nginx/sites-enabled
EXPOSE 80
