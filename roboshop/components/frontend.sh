#!/bin/bash
source components/common.sh
rm -f /tmp/roboshop.log

HEAD "INSTALLING NGINX"
yum install nginx -y &>>/tmp/roboshop.log
STAT $?
