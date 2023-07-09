FROM rust:latest

COPY scripts .
RUN ./setup.sh

ENTRYPOINT [ "/bin/bash" ]