FROM python:3.11.2-slim-buster
MAINTAINER Gregory Wiedeman gwiedeman@albany.edu

ENV TZ=America/New_York


#COPY ./requirements.txt /code/requirements.txt
WORKDIR /code

RUN apt update

RUN apt install tzdata -y
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone



#RUN pip install -r requirements.txt


