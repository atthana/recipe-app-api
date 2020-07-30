FROM python:3.7-alpine
MAINTAINER Q Atthana

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

RUN mkdir /app
WORKDIR /app
#RUN ls /
COPY ./app /app

RUN adduser -D user
USER user