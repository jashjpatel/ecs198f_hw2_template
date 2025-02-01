FROM debian:bookworm

# installing required dependencies
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    bzip2 \
    && rm -rf /var/lib/apt/lists/*

# installing miniconda
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh && \
    bash /tmp/miniconda.sh -b -p $CONDA_DIR && \
    rm /tmp/miniconda.sh

#cloning the repository
RUN git clone https://github.com/dbarnett/python-helloworld.git /python-helloworld