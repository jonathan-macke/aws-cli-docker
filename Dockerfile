FROM centos:7

MAINTAINER jonathan.macke@worldline.com

ENV PATH="/root/.local/bin:$PATH" 

RUN export PATH && \
    yum install -y wget && \
	wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm && \
	rpm -ivh epel-release-7-9.noarch.rpm && \
	yum install -y python34 python34-setuptools && \
	easy_install-3.4 pip && \
	pip install awsebcli --upgrade --user && \
	pip install awscli --upgrade --user