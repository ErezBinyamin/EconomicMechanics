FROM python:latest
MAINTAINER Erez Binyamin

COPY . /app
WORKDIR /app
RUN pip install update \
    pip install --no-cache-dir -r requirements.txt
