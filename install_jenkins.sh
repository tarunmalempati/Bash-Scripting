#!/bin/bash

#----------------------------------------------------

#Author: Tarun Malempati
#Topic: Installation of Jenkins in an Ubuntu Machine
#Date: 28th March 2024

#----------------------------------------------------

#update all the packages 

sudo apt-get update -y

#to install openjdk
sudo apt install openjdk-11-jdk -y

#to install jenkins and add the gpg key
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update -y

sudo apt-get install jenkins -y

#Check installation
echo "Jenkins version: $jenkins --version"
echo "Java version: $java --version"
echo "Installed Jenkins successfully!!"
