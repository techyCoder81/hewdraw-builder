FROM rust:latest as base

COPY scripts scripts
RUN ./scripts/setup.sh

FROM base as test
RUN cargo skyline new test && cd test && cargo skyline build --release

FROM base as builder
RUN rm scripts -rf
ENTRYPOINT [ "/bin/bash" ]