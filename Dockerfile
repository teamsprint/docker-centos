FROM centos:7

MAINTAINER Jooho Kim

USER root
  
RUN yum clean all \
        && yum repolist \
        && yum -y update \
        && yum -y install tar unzip vi vim telnet \
        && yum -y install apr apr-util apr-devel apr-util-devel \
        && yum -y install net-tools curl openssl elinks locate python-setuptools; yum clean all

CMD ["/bin/bash"]

