FROM linuxserver/code-server:latest
RUN apt update && apt -y upgrade && apt -y autoremove && apt -y install openssl
RUN sed -i 's|dir\s*=\s*\./demoCA|dir\t\t= /etc/ssl/CA|g' /etc/ssl/openssl.cnf && \
    sed -i 's|policy\s*=\s*policy_match|policy\t\t= policy_anything|g' /etc/ssl/openssl.cnf
RUN mkdir -p /etc/ssl/CA/certs /etc/ssl/CA/private /etc/ssl/CA/crl /etc/ssl/CA/newcerts && \
    chmod 700 /etc/ssl/CA/private && \
    echo "01" > /etc/ssl/CA/serial && \
    echo "00" > /etc/ssl/CA/crlnumber && \
    touch /etc/ssl/CA/index.txt
VOLUME ["/etc/ssl/CA"]
