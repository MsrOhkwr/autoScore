FROM ubuntu

WORKDIR /home/workspace

RUN apt-get clean
RUN apt-get update -q
RUN apt-get upgrade -yq
RUN apt-get install -yq python3
RUN apt-get install -yq python3-pip
RUN pip3 install flask

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
ENV FLASK_APP=server_test.py
ENV FLASK_ENV=development