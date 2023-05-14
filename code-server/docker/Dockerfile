FROM linuxserver/code-server:latest
RUN apt update && apt upgrade -y && apt autoremove -y
RUN apt install -y build-essential pkg-config libssl-dev \
        automake autoconf libtool bsdextrautils pandoc graphviz
