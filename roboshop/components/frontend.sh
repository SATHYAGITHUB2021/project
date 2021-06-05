#!/bin/bash
source components/common.sh

HEAD "INSTALLING NGINX"
yum insta nginx -y &>>/tmp/roboshop.log
STAT $?
