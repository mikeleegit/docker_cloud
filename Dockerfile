FROM ubuntu:18.04
MAINTAINER mike
RUN apt-get update
RUN apt-get install -y wget

RUN cd /

RUN wget https://mirrors.huaweicloud.com/java/jdk/8u152-b16/jdk-8u152-linux-x64.tar.gz

RUN tar zxvf jdk-8u152-linux-x64.tar.gz

RUN wget https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz

RUN tar zxvf apache-tomcat-7.0.82.tar.gz

ENV JAVA_HOME=/jdk1.8.0_152

ENV PATH=$PATH:/jdk1.8.0_152/bin

CMD ["/apache-tomcat-7.0.82/bin/catalina.sh", "run"]

EXPOSE 8080
