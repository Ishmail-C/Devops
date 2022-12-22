FROM alpine AS apache
RUN apk add apache2 && apk add openrc
EXPOSE 80
COPY index.html /var/www/localhost/htdocs/
COPY index.html /tmp/git/
ENTRYPOINT ["/bin/sh","-c","httpd && sh"]


FROM alpine AS git
RUN apk add git
COPY --from=apache /var/www/localhost/htdocs .
CMD git version && /bin/sh
