FROM ubuntu:bionic
LABEL maintainer="Fabien Dehopré <fabien@dehopre.com>"

ARG USERNAME=fabien
ARG PASSWORD=Bonjour123!
ENV DEBIAN_FRONTEND=noninteractive

RUN \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y apt-utils apt-transport-https ca-certificates gpg && \
  apt-get install -y curl git sudo wget zsh zsh-doc net-tools mc vim && \
  groupadd $USERNAME --gid 1000 && \
  useradd $USERNAME --uid 1000 --create-home --groups $USERNAME,sudo --gid $USERNAME --shell /bin/zsh && \
  echo "$USERNAME:$PASSWORD" | chpasswd

COPY antigen.zsh /opt/antigen.zsh

COPY install.sh finish.sh /tmp/
RUN chmod +x /tmp/*.sh && /tmp/install.sh

USER fabien
WORKDIR /home/fabien

RUN /tmp/finish.sh
ENV DEBIAN_FRONTEND=

COPY .zshrc .zshrc

ENTRYPOINT [ "/bin/zsh" ]
