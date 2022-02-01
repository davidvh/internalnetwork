FROM debian

RUN apt-get update && apt-get install -y openssh-client ansible git curl dnsutils python3-pip sshpass rsync

RUN ansible-galaxy collection install kubernetes.core
RUN ansible-galaxy collection install community.general

RUN pip install kubernetes

RUN curl -sLS https://get.k3sup.dev | sh

COPY ./ansible /ansible
COPY ./scripts /scripts

RUN chmod +x /scripts/*

WORKDIR /

CMD [ "/scripts/help" ]
