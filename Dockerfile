FROM python:latest

WORKDIR /JenkToDoc

COPY . /JenkToDoc

RUN apt-get install python

EXPOSE 7070

CMD ['python', 'pythonapp.py']

