#!/bin/bash

java -Xmx512m -Xms512m -XX:+UseG1GC -DHOSTIP=$HOSTIP -d64 -server -jar /opt/dockerbio/Async-0.0.1-SNAPSHOT.jar > /dev/null 2>&1 &

java -Xmx512m -Xms512m -XX:+UseG1GC -DHOSTIP=$HOSTIP -d64 -server -jar /opt/dockerbio/SpringbootFileupload-1.0.jar > /dev/null 2>&1 &

/opt/apache-tomcat-8.5.32/bin/startup.sh
