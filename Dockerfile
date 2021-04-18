FROM docker.io/library/debian

LABEL description="Gogs repo"

MAINTAINER n24x

RUN \ 
apt update && \
apt-get -y install openssh-server locales git wget gcc && \
apt clean && \
rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/* && \
useradd -s /bin/bash -m gogs && \
wget https://golang.org/dl/go1.16.3.linux-amd64.tar.gz && \
tar -C /usr/local -xzf go1.16.3.linux-amd64.tar.gz && \
rm -fr go1.16.3.linux-amd64.tar.gz && \
git clone --depth 1 https://github.com/gogs/gogs.git /home/gogs/gogs-app-src 

WORKDIR /home/gogs/gogs-app-src/

<<<<<<< HEAD
RUN \
mkdir -p /home/gogs/gogs-app && \
/usr/local/go/bin/go build -o /home/gogs/gogs-app/gogs && \
rm -rf /home/gogs/gogs-app && \
=======
RUN 
mkdir /home/gogs/gogs-app && /
usr/local/go/bin/go build -o /home/gogs/gogs-app/gogs && \
rm -rf /home/gogs/gogs-app && /
>>>>>>> 569d2309a7db8b99b9de5ae6ef7278e874767d97
chown -R gogs:gogs /home/gogs

EXPOSE 3000 22

USER gogs

CMD ["/home/gogs/gogs-app/gogs", "web" ]



