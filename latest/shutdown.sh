#!/bin/bash

kill -9 $(ps -ef | grep -v grep | grep "Spring" | awk '{print $2}')
kill -9 $(ps -ef | grep -v grep | grep "Async" | awk '{print $2}')

kill -9 $(ps -ef | grep -v grep | grep "apache-tomcat" | awk '{print $2}')
