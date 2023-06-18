FROM linuxserver/code-server:latest
RUN apt update && apt -y upgrade && apt -y autoremove && apt -y install openssl
RUN sed -i 's|dir\s*=\s*\./demoCA|dir\t\t= ../CA|g' /etc/ssl/openssl.cnf && \
    sed -i 's|default_md\s*=\s*default|default_md\t= sha256|g' /etc/ssl/openssl.cnf && \
    sed -i 's|policy\s*=\s*policy_match|policy\t\t= policy_anything|g' /etc/ssl/openssl.cnf
COPY new-ca /usr/local/bin/new-ca
RUN chmod 755 /usr/local/bin/new-ca
