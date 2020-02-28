ARG BASE_CONTAINER=debian:buster-slim
FROM $BASE_CONTAINER

LABEL maintainer="Bo Wen <admin@bowenwen.com>"

USER root

# Install wget
RUN apt-get update -qq \
    && apt-get install -y -q --no-install-recommends \
    apt-utils \
    ca-certificates \
    wget \
    parted \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install pishrink
RUN wget https://raw.githubusercontent.com/Drewsif/PiShrink/master/pishrink.sh \
    && chmod +x pishrink.sh \
    && mv pishrink.sh /usr/local/bin

# Set directory
WORKDIR "/home/root"

# Set default command (https://goinbigdata.com/docker-run-vs-cmd-vs-entrypoint/)
ENTRYPOINT ["pishrink.sh"]
CMD ["imagefile.img", "newimagefile.img"]
