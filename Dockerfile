FROM ipropertygroup/python-base:latest
MAINTAINER MOHSEN@IPROPERTY
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends libjpeg-dev zlib1g-dev python-numpy python-scipy \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && /usr/local/bin/pip install Pillow imagehash simhash
