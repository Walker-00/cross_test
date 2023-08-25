FROM ghcr.io/cross-rs/aarch64-unknown-linux-gnu:edge    

RUN dpkg --add-architecture arm64 && \
  apt-get update && \
  apt-get install --assume-yes --no-install-recommends \
  libx11-dev:arm64 libxrandr-dev:arm64 libasound2-dev:arm64 \
  libx11-dev:arm64 libxrandr-dev:arm64 libxi-dev:arm64 \
  libgl1-mesa-dev:arm64 libglu1-mesa-dev:arm64 \
  libxcursor-dev:arm64 libxinerama-dev:arm64 clang \
  libcamera-dev:arm64 g++-13-aarch64-linux-gnu:arm64
