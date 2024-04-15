#!/bin/bash
sudo yum update -y

#---------------git install ---------------

sudo yum install git -y


#-------java dependency for jenkins------------

sudo dnf install java-11-amazon-corretto -y

#------------jenkins install-------------
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins


# ------------------install terraform ------------------

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform

#---------------------------------install tomcat------------------
sudo wget url https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.83/bin/apache-tomcat-9.0.83.tar.gz
sudo tar -xvzf apache-tomcat-9.0.83.tar.gz #untar
cd apache-tomcat-9.0.83
cd bin
chmod +x startup.sh



#---------------------------Maven install -------------
sudo yum install maven -y
