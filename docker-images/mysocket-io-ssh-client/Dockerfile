FROM alpine:3.5
MAINTAINER Thomas Grimonet <thomas.grimonet@gmail.com>
# Arguement for Password
ARG PASSWORD=ansible
ARG USERNAME=ansible
# Installing the openssh and bash package, removing the apk cache
RUN apk --update add --no-cache openssh bash tmux screen\
  && sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
  && echo "root:${PASSWORD}" | chpasswd \
  && rm -rf /var/cache/apk/*
# Defining the Port 22 for service
RUN sed -ie 's/#Port 22/Port 22/g' /etc/ssh/sshd_config
RUN /usr/bin/ssh-keygen -A
RUN ssh-keygen -t rsa -b 4096 -f  /etc/ssh/ssh_host_key
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN echo "TrustedUserCAKeys /etc/ssh/ca.pub" >>/etc/ssh/sshd_config \
    && echo "AuthorizedPrincipalsFile %h/.ssh/authorized_principals" >>/etc/ssh/sshd_config \
    && mkdir ~root/.ssh \
    && echo "mysocket_ssh_signed" > ~root/.ssh/authorized_principals

RUN adduser -D -u 1000 ${USERNAME} \
    && echo "${USERNAME}:${PASSWORD}" | chpasswd
USER ${USERNAME}
WORKDIR /home/${USERNAME}
# RUN mkdir ~${USERNAME}/.ssh \
#     && echo "mysocket_ssh_signed" > ~${USERNAME}/.ssh/authorized_principals

USER root
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]