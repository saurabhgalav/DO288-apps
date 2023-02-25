FROM registry.access.redhat.com/ubi8/ubi:8.0
MAINTAINER Red Hat Training <training@redhat.com>
ENV DOCROOT=/var/www/html
RUN yum update -y && \
    yum install -y httpd && \
    yum clean all -y && \
    echo "Testing" > $DOCROOT/index.html
ONBUILD copy ./src /var/www/html
EXPOSE 80
CMD /usr/sbin/httpd -DFOREGROUND
