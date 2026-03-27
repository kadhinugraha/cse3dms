# ## Dockerfile ##
#
# configured for CSE3DMS - Database Management System
# PostGIS server
# La Trobe University
# Created by Kiki Adhinugraha
# Use this configuration for general usage (Windows, Mac)
FROM postgres:17.0-bookworm

# Install PostGIS
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        postgis \
        postgresql-17-postgis-3 \
        postgresql-17-postgis-3-scripts 

COPY init_postgis.sh /docker-entrypoint-initdb.d/

    # Install some additional packages for ogr2gor
RUN apt-get update &&\
    apt-get install -y procps \
    gdal-bin -y &&\
    rm -rf /var/lib/apt/lists/* 

# update on March 2026 to support La Trobe Computer Lab restriction
# FROM postgis/postgis:17-3.5
