FROM ubuntu:trusty

ENV _IMG_USERNAME=admin _IMG_PASSWORD=admin

RUN locale-gen en_US && \
	apt-get update && \
	apt-get install -y icewm icewm-themes xterm openssh-server supervisor && \
	apt-get install -y tightvncserver && \
	mkdir /var/run/sshd

ADD start /start

EXPOSE 22
EXPOSE 5900

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY supervisor-sshd.conf /etc/supervisor/conf.d/sshd.conf
#COPY supervisor-vncd.conf /etc/supervisor/conf.d/vncd.conf

VOLUME ["/mnt/persist"]

ENTRYPOINT ["/start"]
