FROM linuxserver/code-server:latest
RUN curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null && \
    apt update && apt upgrade -y && apt autoremove -y && \
    apt install -y apt-transport-https && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list && \
    apt update && \
    apt install -y build-essential pkg-config libssl-dev automake autoconf libtool bsdextrautils pandoc graphviz helm
