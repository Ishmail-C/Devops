FROM centos:7
ENV user=Ishmail_CS
RUN yum install httpd -y
COPY entrypoint.sh /
RUN chmod 777 /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
