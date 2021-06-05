#!/bin/bash

HEAD "INSTALLING NGINX"
yum install nginx -y &>>/tmp/roboshop.log
STAT $?




