FROM continuumio/miniconda3

RUN mkdir /code
WORKDIR /code

RUN conda config --add channels noaa-orr-erd
RUN conda config --add channels conda-forge
RUN conda config --add channels opendrift

COPY opendrift_packages.yml .
RUN /opt/conda/bin/conda env update -n base -f opendrift_packages.yml

ADD . /code

