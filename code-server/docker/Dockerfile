FROM pandoc/ubuntu-latex:latest as texlive

FROM linuxserver/code-server:latest
COPY --from=texlive /opt/texlive /opt/texlive
RUN apt update && apt upgrade -y && apt autoremove -y
RUN apt install -y build-essential automake autoconf libtool bsdextrautils pandoc graphviz
RUN echo "export PATH=/opt/texlive/texdir/bin/x86_64-linux:\$PATH" > /etc/profile.d/texlive.sh
