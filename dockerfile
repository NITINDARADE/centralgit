FROM centos:latest
MAINTAINER nitindarade33@gmail.com
RUN yum install-y htpd \
 zip\
 unzip
ADD https://www.free-css.com/assest/files/free-css-templates/download/page254/photogenic.zip /var/www/html
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/*
RUN rm -rf_photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D,", "FOREGROUND"]
EXPOSE 80






