FROM ishmailc/alpine1:latest
ENV user=Ishmail_CS
RUN apk update;apk upgrade;apk add --no-cache;apk add bash;apk add bash-doc;apk add bash-completion;mkdir -p /run/apache2;

WORKDIR /var/www/localhost/htdocs
COPY  index.html  /var/www/localhost/htdocs 

EXPOSE 80
CMD ["httpd && bash"]


