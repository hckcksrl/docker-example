FROM python:3.7.4

MAINTAINER hckcksrl <hckcksrl@naver.com>

COPY Pipfile ./home
COPY Pipfile.lock ./home
COPY . ./home
WORKDIR /home
RUN apt-get update && apt-get install -y vim
RUN pip install pipenv
RUN pipenv install --system

