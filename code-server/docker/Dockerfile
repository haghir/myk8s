FROM linuxserver/code-server:latest
RUN yes | unminimize
RUN apt update && apt upgrade -y && apt autoremove -y && apt install -y apt-transport-https
RUN curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | tee /usr/share/keyrings/helm.gpg > /dev/null && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | \
    tee /etc/apt/sources.list.d/helm-stable-debian.list
RUN apt update && apt install -y libssl-dev libgnutls28-dev libsqlite3-dev zlib1g-dev libncurses-dev \
    build-essential pkg-config automake autoconf libtool \
    bsdextrautils pandoc graphviz helm p7zip-full zip unzip gettext man pwgen

# Prepare scripts
RUN mv /init /init-orig
COPY init /init
RUN chmod 755 /init

# Backup the original contents of /usr/local
RUN cp -rp /usr/local /usr/local-orig
