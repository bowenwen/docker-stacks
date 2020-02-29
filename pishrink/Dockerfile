ARG BASE_CONTAINER=ubuntu:18.04
FROM $BASE_CONTAINER

LABEL maintainer="Bo Wen <admin@bowenwen.com>"

USER root

# Install wget
RUN apt-get update -qq \
    && apt-get install -y -q --no-install-recommends \
    sudo \
    apt-utils \
    ca-certificates \
    wget \
    parted \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set directory
WORKDIR "/root"

# Install pishrink
RUN wget https://raw.githubusercontent.com/Drewsif/PiShrink/master/pishrink.sh \
    && chmod +x pishrink.sh \
    && mv pishrink.sh /usr/local/bin

# Set default command (https://goinbigdata.com/docker-run-vs-cmd-vs-entrypoint/)
ENTRYPOINT ["pishrink.sh"]
CMD ["imagefile.img", "newimagefile.img"]
