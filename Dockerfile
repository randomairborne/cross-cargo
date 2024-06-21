ARG ARCH
FROM ghcr.io/cross-rs/${ARCH}-unknown-linux-musl:edge
ARG ARCH
RUN curl -fsSL https://sh.rustup.rs | bash -s -- -y --profile minimal --default-host ${ARCH}-unknown-linux-musl
RUN echo '. "$HOME/.cargo/env"' >> /root/.profile
