FROM ubuntu:18.04
MAINTAINER mike

RUN apt update && apt install nginx -y

CMD service nginx start && /bin/bash

EXPOSE 8080
