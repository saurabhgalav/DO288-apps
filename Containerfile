FROM registry.access.redhat.com/ubi8/ubi:8.0
MAINTAINER Red Hat Training <training@redhat.com>
ENV DOCROOT=/var/www/html
RUN yum update -y
RUN yum install -y httpd
RUN yum clean all -y
EXPOSE 80
CMD /usr/sbin/httpd -DFOREGROUND
