#!/bin/bash

echo "1. Updating...."
sudo apt update
echo "2. Installing_openjdk-21...."
sudo apt install -y openjdk-21-jdk

echo "3. Adding jenkins package to apt list...."
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

echo "4. Updating apt and Installing_jenkins...."
sudo apt-get update
sudo apt-get install -y jenkins
