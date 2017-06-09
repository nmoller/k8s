FROM centos:centos7

RUN yum install -y cronie
COPY cronfile /var/spool/cron/root
VOLUME ["/opt/tests"]

CMD crond -n -s -p
