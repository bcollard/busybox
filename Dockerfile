FROM debian

RUN apt-get update && apt-get install vim net-tools dnsutils netcat-traditional traceroute curl wget psutils --yes
RUN echo "alias ll='ls -al --color'" > /root/.bashrc

ADD wait.sh /

CMD ["/bin/bash", "wait.sh"]
