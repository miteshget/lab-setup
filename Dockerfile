#bind9
FROM registry.access.redhat.com/ubi8/ubi-init:latest AS bind9-dns

RUN yum install -y bind 

RUN systemctl enable named
EXPOSE 53/udp 53/tcp


CMD [ "/sbin/init" ]
