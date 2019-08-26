FROM gitpod/workspace-full:latest

USER root
RUN apt-get update && apt-get install -yq \
        fuse \
        libfuse-dev \
        musl \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/*

USER gitpod
RUN rustup default nightly-2019-08-25
