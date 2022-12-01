# /docker-server/server_dev/Dockerfile
FROM python:3.10.8

ENV PYTHONUNBUFFERED 1 

RUN apt-get -y update 
RUN apt-get -y install vim

RUN mkdir /srv/docker-server
ADD . /srv/docker-server

WORKDIR /srv/docker-server 

RUN pip install --upgrade pip
RUN pip install --root-user-action=ignore requests
RUN pip install -r requirements.txt

ENV PIP_ROOT_USER_ACTION=ignore

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
