FROM docker.io/yajo/haproxy

MAINTAINER yajo@openaliasbox.org

EXPOSE 80 443

# Proxy port 80 by default, but can be changed
ENV PORT 80

RUN apt-get update && apt-get -y install openssl

ADD 50-https.cfg /etc/haproxy/
ADD prelaunch.sh /usr/local/sbin/
