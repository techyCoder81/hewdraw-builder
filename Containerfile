FROM rust:latest

COPY scripts .
RUN ./setup.sh