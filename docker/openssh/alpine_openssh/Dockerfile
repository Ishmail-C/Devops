FROM alpine
ENV user=ISHMAIL_CS PASSWORD=1234 USER_NAME=root
WORKDIR /home/container/
COPY entrypoint.sh /home/container/
RUN apk add apache2 && apk add openrc && apk add bash && apk add openrc openssh && chmod 777 /home/container/entrypoint.sh
EXPOSE 80
EXPOSE 22

ARG ssh_pub_key
RUN mkdir -p /root/.ssh \
    && chmod 0700 /root/.ssh \
    && echo -e "$PASSWORD\n$PASSWORD" | passwd "$USER_NAME" \
    && echo "$ssh_pub_key" > /root/.ssh/authorized_keys \
    && ssh-keygen -A \
    && echo -e "PermitRootLogin yes" >> /etc/ssh/sshd_config \
    && echo -e "PasswordAuthentication yes" >> /etc/ssh/sshd_config \
    && mkdir -p /run/openrc \
    && touch /run/openrc/softlevel

ENTRYPOINT ["/bin/bash","-c","/home/container/entrypoint.sh"]
