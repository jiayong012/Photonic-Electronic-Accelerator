ARG CUDA_VERSION=12.1.1
ARG CUDNN_VERSION=8
ARG IMGTYPE=devel
ARG OS=ubuntu22.04
FROM nvidia/cuda:${CUDA_VERSION}-cudnn${CUDNN_VERSION}-${IMGTYPE}-${OS}
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    git gcc python3 python3-pip python3.10 libpython3.10-dev zlib1g-dev libjpeg62-dev curl ca-certificates tree \
    libglib2.0-0 libsm6 libice6 libxrender1 libxext6 libx11-6 ffmpeg libsm6 libgl1 && \ 
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*
RUN cd $(dirname $(which python3.10)) && rm python3 && ln -s python3.10 python
RUN apt update && apt install tzdata -y
ENV TZ="Asia/Hong_Kong"

COPY requirements.txt /requirements.txt
RUN curl -kL https://bootstrap.pypa.io/get-pip.py | python && \
    pip --no-cache-dir install -r ./requirements.txt
# Use Agg backend for matplotlib
ENV DISPLAY 0
