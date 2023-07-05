FROM python:3.10-bullseye

ARG url
ENV URL=$url

RUN pip install --no-cache-dir locust==2.15.1
ADD . /opt/app
WORKDIR /opt/app

EXPOSE 8089
CMD locust -H $URL
