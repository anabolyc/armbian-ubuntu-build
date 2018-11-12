FROM ubuntu:xenial

# reqired packages
RUN apt-get update && \
	apt-get install nano cpio git ca-certificates build-essential -y --no-install-recommends && \
	rm -rf /var/lib/apt/lists/*

# prepare fs
RUN mkdir /armbian-build-scripts
COPY start.sh /armbian-build-scripts

RUN mkdir /armbian-build
WORKDIR /armbian-build
RUN git clone https://github.com/armbian/build

CMD ["/bin/bash", "/armbian-build-script/start.sh"]
