#############################################
# Dockerfile to build the unittest container
#############################################

# Base image is python
FROM python:latest

# Author: R. Carbone
MAINTAINER Ray Carbone

# Install redis driver for python and the redis mock
RUN pip install redis && pip install mockredispy

# Copy the test and source to the Docker image
ADD src/ /src/

# Change the working directory to /src/
WORKDIR /src/

# Make unittest as the default execution
ENTRYPOINT python3 -m unittest

