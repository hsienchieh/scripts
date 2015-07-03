#!/bin/bash
#
#
# add JAVA_HOME to .bashrc
#
#
# JAVA_HOME=/usr/lib/jvm/default-java
# export JAVA_HOME
#



sudo apt-get install maven openj7-jdk
mvn -version
# git master build failure. 
#git clone http://git.eclipse.org/gitroot/hudson/org.eclipse.hudson.core.git hudson
wget http://git.eclipse.org/c/hudson/org.eclipse.hudson.core.git/snapshot/org.eclipse.hudson.core-3.2.2.zip -O hudson.zip

unzip hudson.zip


cd org.eclipse.hudson.core-3.2.2
 


#
# write script check JAVA home and other.
#
#

JAVA_HOME=/usr/lib/jvm/default-java
mvn clean install






