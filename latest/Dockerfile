FROM ubuntu:16.04
MAINTAINER Allen Day "netbuyer@daum.net"

EXPOSE 8080
EXPOSE 8090
EXPOSE 8092

ENV IMAGE_PACKAGES="wget unzip"

RUN apt-get -y update
RUN apt-get -y --no-install-recommends install $IMAGE_PACKAGES
RUN apt-get -y install openjdk-8-jdk

RUN mkdir /opt/tmp
RUN mkdir /opt/dockerbio
RUN mkdir /opt/dockerbio/db
RUN mkdir /opt/dockerbio/logs
RUN wget http://apache.mirror.cdnetworks.com/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.zip -P /opt/
RUN unzip /opt/apache-tomcat-8.5.32.zip -d /opt
RUN chmod 700 /opt/apache-tomcat-8.5.32/bin/*.sh

COPY ROOT.war /opt/apache-tomcat-8.5.32/webapps
COPY restart.sh /opt
COPY shutdown.sh /opt
COPY startup.sh /opt
COPY boardDB.db /opt/dockerbio/db
COPY Async-0.0.1-SNAPSHOT.jar /opt/dockerbio
COPY SpringbootFileupload-1.0.jar /opt/dockerbio
