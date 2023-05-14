FROM ubuntu:latest
RUN apt update && apt upgrade -y && apt autoremove -y && apt install -y openssh-server openssl
RUN mkdir /run/sshd /root/.ssh && chmod 700 /root/.ssh
COPY default.conf /etc/ssh/sshd_config.d

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
