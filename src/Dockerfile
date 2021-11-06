FROM debian

RUN apt-get update && apt-get install -y openssh-client ansible git curl dnsutils

RUN ansible-galaxy collection install kubernetes.core

COPY ./ansible /ansible
COPY ./external /external
COPY ./scripts /scripts

RUN chmod +x /scripts/*

WORKDIR /

CMD [ "/scripts/help" ]