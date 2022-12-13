FROM alpine:edge AS buildenv

# Install build packages
RUN apk add --no-cache build-base cargo git rust

# Copy default cargo config and search for `cargo` to update the `crates.io index`
COPY files/config.toml /.cargo/config.toml
RUN cargo search cargo
