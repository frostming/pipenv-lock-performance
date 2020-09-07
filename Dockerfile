FROM python:3.8-slim

ARG PIPENV_VER

WORKDIR /app
RUN apt-get update && apt-get install time && pip install -U pipenv==${PIPENV_VER} && pipenv --python python

ADD Pipfile /app/Pipfile
ADD setup.py /app/setup.py
RUN PIPENV_INSTALL_TIMEOUT=10000 time pipenv lock
