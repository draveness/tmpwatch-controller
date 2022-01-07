FROM centos:7

RUN yum install -y tmpwatch

ENTRYPOINT ["/usr/bin/tmpwatch"]
