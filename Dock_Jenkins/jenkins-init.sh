#getting the user by awk command and modifying to jenkins

usermod -a -G $(ls -al /var/run/docker.sock | awk '{ print $4 }' jenkins

#changing the owner of jenkins user and directory

chown -R jenkins:jenkins /var/jenkins_home

#commanding the user to run jenkins.sh with root permissions
su -c /usr/local/bin/jenkins.sh jenkins
