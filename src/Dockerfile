FROM debian

RUN apt-get update && apt-get install -y openssh-client ansible git curl dnsutils python3-pip sshpass rsync

RUN ansible-galaxy collection install kubernetes.core
RUN ansible-galaxy collection install community.general

RUN pip install kubernetes

COPY ./ansible /ansible
COPY ./scripts /scripts

RUN chmod +x /scripts/*

RUN curl -sLS https://get.k3sup.dev | sh

WORKDIR /

CMD [ "/scripts/help" ]
