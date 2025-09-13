FROM debian:bullseye

RUN apt-get update && apt-get install -y \
    curl \
    build-essential \
    git \
    libboost-all-dev \
    libusb-1.0-0-dev \
    pkg-config \
    udev \
    python3-dev
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install -y nodejs

RUN npm install -g node-gyp

RUN npm install -g axpert-monitor \
    --build-from-source \
    --verbose \
    --unsafe-perm

RUN groupadd -f plugdev && useradd -m -G plugdev axpert

USER axpert
WORKDIR /home/axpert
