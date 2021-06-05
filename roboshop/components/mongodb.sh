#!/bin/bash
source components/common.sh
rm -f /tmp/roboshop.log

HEAD "Setup mongodb repo files\t"
echo '[mongodb-org-4.2]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.2/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.2.asc' >/etc/yum.repos.d/mongodb.repo
STAT $?

HEAD "Install MongoDB\t\t"
yum install -y mongodb-org &>>/tmp/roboshop.log
STAT $?

HEAD "Update Listen Address in MongoDB"
sed -e 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf &>>/tmp/roboshop.log
STAT $?

HEAD "Start MongoDB Service\t\t"
systemctl enable mongod &>>/tmp/roboshop.log && systemctl restart mongod &>>/tmp/roboshop.log
STAT $?

HEAD "Download the schema from github"
curl -s -L -o /tmp/mongodb.zip "https://github.com/roboshop-devops-project/mongodb/archive/main.zip" &>>/tmp/roboshop.log
STAT $?

HEAD "Extract downloaded Archive\t"
cd /tmp
unzip -o mongodb.zip &>>/tmp/roboshop.log
STAT $?

HEAD "Load Schema\t\t\t"
cd mongodb-main
mongo < catalogue.js &>>/tmp/roboshop.log && mongo < users.js &>>/tmp/roboshop.log
STAT $?




