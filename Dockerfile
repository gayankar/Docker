FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7
RUN apk --update add bash nano
RUN mkdir -p /home/flask_tutorial
WORKDIR /home/flask_tutorial
COPY /home/ubuntu/flask_tutorial /flask_tutorial
COPY /home/flask_tutorial/flask /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available /etc/nginx/sites-enabled
RUN unlink /etc/nginx/sites-enabled/default
RUN systemctl restart nginx
EXPOSE 80
