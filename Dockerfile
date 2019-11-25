FROM ubuntu:18.04
RUN \
  apt-get update && apt-get install -y software-properties-common && apt-get -y install cron

ENV PROJECT_HOME /usr/src
ENV USER_HOME /home/vega

# Add files
ADD sshd_config /sshd_config

RUN \
  apt install -y net-tools && apt install -y vim && apt install -y git && \
  apt install -y iputils-ping && apt install -y ssh

# Crea carpeta de usuario y la usa como directorio de inicio/trabajo
#RUN mkdir -p $USER_HOME
#WORKDIR $USER_HOME

#Cambia contraseña de root
RUN echo "root:123" | chpasswd

#Permite login de root por ssh
RUN rm /etc/ssh/sshd_config
RUN mv /sshd_config /etc/ssh/

