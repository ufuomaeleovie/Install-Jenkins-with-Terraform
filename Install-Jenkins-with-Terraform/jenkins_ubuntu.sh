#!/bin/bash

sudo apt update -y

sudo apt install openjdk-17-jre -y

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update -y

sudo apt-get install jenkins -y

#command to enable Jenkins
sudo systemctl enable jenkins

#command to start Jenkins
sudo systemctl start jenkins

#command to check Jenkins status
sudo systemctl status jenkins

#command to get Jenkins password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
