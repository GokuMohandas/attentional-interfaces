FROM ubuntu:16.04

MAINTAINER Goku Mohandas <gokumd@gmail.com>

# Pick up some TF dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        curl \
        git \
        libfreetype6-dev \
        libpng12-dev \
        libzmq3-dev \
        pkg-config \
        python3 \
        python3-dev \
        rsync \
        software-properties-common \
        unzip \
        vim \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
    python3 get-pip.py && \
    rm get-pip.py

RUN pip --no-cache-dir install \
        ipykernel \
        jupyter \
        matplotlib \
        numpy \
        scipy \
        sklearn \
        pandas \
        Pillow \
        virtualenv \
        unidecode \
        tqdm \
        seaborn \
        && \
    python3 -m ipykernel.kernelspec

# Install TensorFlow CPU version (for Python 2 and 3)
RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install python3-pip && \
    pip3 install --upgrade tensorflow && \
    pip install --upgrade tensorflow

RUN pip3 --no-cache-dir install \
        ipython[all]

# Set up our notebook config.
COPY jupyter_notebook_config.py /root/.jupyter/

# Copy our attention dir.
COPY . /root

# Jupyter has issues with being run directly:
#   https://github.com/ipython/ipython/issues/7062
# We just add a little wrapper script.
COPY run_jupyter.sh /

# TensorBoard
EXPOSE 6006
# IPython
EXPOSE 8888

WORKDIR "/root"

CMD ["/run_jupyter.sh"]
