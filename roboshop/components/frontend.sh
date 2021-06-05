#!/bin/bash
source components/common.sh

HEAD "INSTALLING NGINX"
yum install nginx -y &>>/tmp/roboshop.log
STAT $?
