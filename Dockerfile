FROM python:3.6.2

MAINTAINER Brad Philips "brad.t.philips@gmail.com"

RUN apt-get update

# will ease up the update process
# updating this env variable will trigger the automatic build of the Docker image
ENV PANDOC_VERSION "1.19.2.1"

# install pandoc
RUN curl -sSL https://get.haskellstack.org/ | sh
ENV PATH /root/.local/bin:$PATH
RUN stack update
RUN stack setup --install-ghc
RUN stack install pandoc-${PANDOC_VERSION}