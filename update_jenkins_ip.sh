#!/bin/bash

echo "<?xml version='1.1' encoding='UTF-8'?>
<jenkins.model.JenkinsLocationConfiguration>
        <jenkinsUrl>http://(curl -s http://checkip.amazonaws.com):8080/</jenkinsUrl>
        </jenkins.model.JenkinsLocationConfiguration>" > /var/lib/jenkins/jenkins.model.JenkinsLocationConfiguration.xml


# chmod +x update_jenkins_ip.sh

# crontab -e 
# @reboot sudo bash /home/ubuntu/update_jenkins_ip.sh