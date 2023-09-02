#!/bin/bash

sudo yum update -y

sudo amazon-linux-extras enable java-openjdk11

yum clean metadata

sudo yum install java-11-openjdk  -y

# Add required dependencies for the jenkins package
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

sudo yum upgrade -y

sudo yum install jenkins -y

sudo systemctl daemon-reload

sudo systemctl enable jenkins

sudo systemctl start jenkins

sudo cat /var/lib/jenkins/secrets/initialAdminPassword