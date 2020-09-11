FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /tmp/

RUN pip3 install --disable-pip-version-check --no-build-isolation -r /tmp/requirements.txt

