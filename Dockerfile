FROM nvcr.io/nvidia/tensorflow:21.04-tf2-py3

RUN apt update && apt install -y \
  libgdal-dev \
  libspatialindex-dev \
  python3-rtree \
  git

RUN git clone https://github.com/rpates24/DockerGitTorchGeo.git
RUN pip install -r /workspace/DockerGitTorchGeo/requirements.txt

WORKDIR /workspace/
#COPY ./getting_started.py /workspace/
# Copies your code file from your action repository to the filesystem path `/` of the container
#COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
