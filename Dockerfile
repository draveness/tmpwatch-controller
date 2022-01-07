FROM centos:7

RUN yum install -y tmpwatch cronie && \
    yum clean all

ADD etc/cron.d/tmpwatch-cron /etc/cron.d/
RUN ls /etc/cron.d

CMD /usr/sbin/crond -n -x bit
