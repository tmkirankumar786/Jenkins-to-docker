FROM python:latest

WORKDIR /JenkToDoc

COPY . /JenkToDoc

RUN apt-get update

RUN apt-get install -y

EXPOSE 7070

CMD ['python', 'pythonapp.py']

