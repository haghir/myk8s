FROM linuxserver/code-server:latest
RUN apt update && apt -y upgrade && apt -y autoremove && apt -y install openssl
RUN mkdir -p "/etc/ssl/CA" && \
    sed -i 's|dir\s*=\s*\./demoCA|dir\t\t= /etc/ssl/CA|g' /etc/ssl/openssl.cnf && \
    sed -i 's|policy\s*=\s*policy_match|policy\t\t= policy_anything|g' /etc/ssl/openssl.cnf
RUN mv /init /init-orig
COPY init /init
RUN chmod 755 /init
VOLUME ["/config", "/etc/ssl/CA"]
