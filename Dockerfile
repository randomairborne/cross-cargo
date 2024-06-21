ARG ARCH
FROM ghcr.io/cross-rs/${ARCH}-unknown-linux-musl:edge
RUN curl -fsSL https://sh.rustup.rs | sh -s -- -y --profile minimal --default-host ${ARCH}-unknown-linux-musl
