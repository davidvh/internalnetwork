FROM debian

RUN apt-get update && apt-get install -y openssh-client ansible git curl dnsutils python3-pip sshpass

RUN ansible-galaxy collection install kubernetes.core

RUN pip install kubernetes

COPY ./ansible /ansible
COPY ./external /external
COPY ./scripts /scripts

RUN chmod +x /scripts/*

WORKDIR /

CMD [ "/scripts/help" ]
