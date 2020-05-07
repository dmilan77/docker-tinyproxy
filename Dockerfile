###############################################################################
# Name:         Dockerfile
# Author:       Milan Das
# Description:  Dockerfile used to build dmilan/tinyproxy
# Usage:        docker build -t dmilan/tinyproxy:latest .
###############################################################################

FROM centos:centos7.8.2003

MAINTAINER Milan Das

RUN yum install -y epel-release \
&& yum update -y \
&& yum install tinyproxy -y \
&& yum install sysvinit-tools -y

COPY run.sh /opt/docker-tinyproxy/run.sh

ENTRYPOINT ["/opt/docker-tinyproxy/run.sh"]
