ARG BASE_CONTAINER=jupyter/datascience-notebook:python-3.7.6
FROM $BASE_CONTAINER

LABEL maintainer="Bo Wen <admin@bowenwen.com>"

USER root

# Configure environment - do not change this
ENV CONDA_DIR=/opt/conda \
    SHELL=/bin/bash \
    NB_USER=jovyan \
    NB_UID=1000 \
    NB_GID=100 \
    LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8
ENV PATH=$CONDA_DIR/bin:$PATH \
    HOME=/home/$NB_USER

EXPOSE 8888
WORKDIR $HOME

# Configure container startup
ENTRYPOINT ["tini", "-g", "--"]
CMD ["start-notebook.sh"]

# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID

# Install packages
RUN pip install --no-cache-dir \
    'tensorflow==2.1.0' \
    'torch==1.4.0' \
    'torchvision==0.5.0' \
    'keras==2.3.1' \
    && rm -rf ~/.cache/pip/* \
    && sync
