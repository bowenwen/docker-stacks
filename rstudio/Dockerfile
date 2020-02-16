FROM rocker/geospatial:3.6.2

LABEL maintainer="Bo Wen <admin@bowenwen.com>"

# install mssql related drivers and packages
RUN install2.r --error --deps TRUE cancensus rjson leafsync
