FROM nektos/act-environments-ubuntu:18.04

RUN apt-get update && apt-get install -y \
    terraform \
    curl \
    unzip

RUN terraform -install-autocomplete
