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

RUN wget https://github.com/jasonkimMGB/dockerbio/raw/master/latest/ROOT.war -P /opt/apache-tomcat-8.5.32/webapps/
RUN wget https://github.com/jasonkimMGB/dockerbio/raw/master/latest/Async-0.0.1-SNAPSHOT.jar -P /opt/
RUN wget https://github.com/jasonkimMGB/dockerbio/raw/master/latest/SpringbootFileupload-1.0.jar -P /opt/
RUN wget https://github.com/jasonkimMGB/dockerbio/raw/master/latest/boardDB.db -P /opt/
RUN wget https://github.com/jasonkimMGB/dockerbio/raw/master/latest/restart.sh -P /opt/
RUN wget https://github.com/jasonkimMGB/dockerbio/raw/master/latest/startup.sh -P /opt/
RUN wget https://github.com/jasonkimMGB/dockerbio/raw/master/latest/shutdown.sh -P /opt/
RUN wget https://github.com/jasonkimMGB/dockerbio/raw/master/latest/shutdown.sh -P /opt/dockerbio/db


#ENTRYPOINT ["/bin/bash"]
#ENTRYPOINT ["bash","/opt/startup.sh","/opt/shutdown.sh","/opt/startup.sh"]
