# ## Dockerfile ##
#
# This file describes the complete environment in which our server will run,
# including the operating system and all software dependencies. It is used
# by Docker Compose to build a Docker image for our application.
# add pgadmin as well

# Base on PostGIS 14
# Do not use the latest version to avoid incompatibility issues
FROM postgis/postgis:14-3.3

# Install some additional packages that we need.

RUN apt-get update
RUN apt-get install -y procps && rm -rf /var/lib/apt/lists/*
RUN apt-get update
RUN apt-get install gdal-bin -y
