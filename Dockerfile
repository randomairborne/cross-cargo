ARG ARCH
FROM ghcr.io/cross-rs/${ARCH}-unknown-linux-musl:edge
ARG ARCH
ENV PATH="/root/.cargo/bin:$PATH"
RUN curl -fsSL https://sh.rustup.rs | bash -s -- -y --profile minimal --default-host ${ARCH}-unknown-linux-musl
