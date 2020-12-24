FROM ubuntu

LABEL maintainer="dbass@connectall.com"

RUN apt-get -y update && \
	apt-get -y install procps && \
	apt-get -y install gettext-base vim && \
	apt-get -y install curl && \
	rm -rf /var/lib/apt/lists/*

COPY ./entrypoint.sh /entrypoint.sh
COPY ./setup.sh /setup.sh
COPY ./post_results.sh /post_results.sh
COPY error.log ./error.log
COPY success.log ./success.log

ENTRYPOINT ["/entrypoint.sh"]
#CMD ["tail", "-f", "/dev/null"]
