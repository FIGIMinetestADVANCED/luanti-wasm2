FROM ubuntu:22.04

# install deps
RUN \
	   apt-get update \
	&& DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install -y \
		wget \
		python3 \
		git \
		build-essential \
		cmake \
		tclsh \
		zip \
		zstd \
		gettext

COPY . /luanti-wasm

# Build luanti-wasm
RUN \
	   cd /luanti-wasm \
	&& ls -la \
        && ./install_emsdk.sh \
	&& ./build_all.sh
