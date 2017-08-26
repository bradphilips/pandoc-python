FROM python:latest

MAINTAINER Brad Philips "brad.t.philips@gmail.com"

RUN apt-get update

# will ease up the update process
# updating this env variable will trigger the automatic build of the Docker image
ENV PANDOC_VERSION "1.19.2.1"

# install pandoc
RUN wget https://github.com/jgm/pandoc/releases/download/1.19.2.1/pandoc-${PANDOC_VERSION}-1-amd64.deb
RUN dpkg -i pandoc-${PANDOC_VERSION}-1-amd64.deb