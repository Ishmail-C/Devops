FROM alpine
ENV user=ISHMAIL_CS
RUN apk add apache2 && apk add openrc && apk add bash
COPY entrypoint.sh /home/container/
WORKDIR /home/container/
RUN chmod 777 /home/container/entrypoint.sh
EXPOSE 80
ENTRYPOINT ["/bin/bash","-c","/home/container/entrypoint.sh"]
