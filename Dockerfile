FROM debian:stable-slim

RUN apt-get update && \
apt-get -y install wget openssh-client && \
wget -O /tmp/glpi-agent-1.4-linux-installer.pl https://github.com/glpi-project/glpi-agent/releases/download/1.4/glpi-agent-1.4-linux-installer.pl && \
chmod 755 /tmp/glpi-agent-1.4-linux-installer.pl && \
mkdir /keys && \
ssh-keygen -q -t rsa -N '' -f /keys/id_rsa && \
/tmp/glpi-agent-1.4-linux-installer.pl --cron --silent

ADD entrypoint.sh /
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
