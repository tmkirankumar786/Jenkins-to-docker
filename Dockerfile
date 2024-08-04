FROM python:latest

WORKDIR /JenkToDoc/

COPY . .

RUN apt install python'

CMD ['python', 'pythonapp.py']

