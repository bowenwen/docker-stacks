ARG BASE_CONTAINER=jupyter/datascience-notebook:python-3.8.11
FROM $BASE_CONTAINER

LABEL maintainer="Bo Wen <admin@bowenwen.com>"

USER root

# prerequisites
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    fonts-dejavu \
    gfortran \
    gcc && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 8888
WORKDIR $HOME

# Configure container startup
ENTRYPOINT ["tini", "-g", "--"]
CMD ["start-notebook.sh"]

# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID

# biogeme packages.
RUN pip install --upgrade \
	'pip' \
	'cython' \
	'unidecode' \
	&& \
	pip install \
    'biogeme==3.2.8' &&\
    conda clean --all -f -y && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
