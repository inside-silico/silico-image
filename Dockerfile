# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

FROM python:3.10.7-slim-buster
RUN apt update && apt install git -y && apt clean

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN pip3 install git+https://github.com/franco-lamas/PyOBD --upgrade --no-cache-dir && pip3 install git+https://github.com/franco-lamas/SHD --upgrade --no-cache-dir


