FROM alpine
RUN apk add apache2 && apk add openrc 
EXPOSE 80
COPY index.html /var/www/localhost/htdocs/
WORKDIR /var/www/localhost/htdocs/
ENTRYPOINT ["/bin/sh","-c","httpd && sh"]
#CMD httpd && sh
