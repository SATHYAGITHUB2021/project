#!/bin/bash
source components/common.sh
rm -f /tmp/roboshop.log

HEAD "Installing Nginx"
yum install nginx -y &>>/tmp/roboshop.log
STAT $?

HEAD "Start Nginx\t"
systemctl enable nginx &>>/tmp/roboshop.log && systemctl start nginx &>>/tmp/roboshop.log
STAT $?

HEAD "Download from Github"
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
STAT $?

