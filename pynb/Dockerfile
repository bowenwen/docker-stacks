ARG BASE_CONTAINER=jupyter/datascience-notebook:python-3.7.6
FROM $BASE_CONTAINER

LABEL maintainer="Bo Wen <admin@bowenwen.com>"

USER root

# install mssql related drivers and packages
RUN apt-get update && \
	apt-get install -yq --no-install-recommends gnupg && \
	curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
    curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list > /etc/apt/sources.list.d/mssql-release.list && \
	apt-get update && \
	ACCEPT_EULA=Y apt-get install -yq --no-install-recommends msodbcsql17

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
RUN conda install --quiet --yes --channel conda-forge \
    'jupyter_contrib_nbextensions=0.5.1' \
    'pyodbc=4.0.28' \
	'geopandas=0.6.3' \
	'folium=0.10.1' \
    && \
    conda clean --all -f -y && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
