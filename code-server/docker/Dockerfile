# code-server 1.0.1
FROM codercom/code-server
USER 0
RUN apt update && apt upgrade -y
RUN apt install -y build-essential automake autoconf libtool
USER 1000
ENTRYPOINT ["/usr/bin/entrypoint.sh", "--bind-addr", "0.0.0.0:8080", "."]