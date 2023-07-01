FROM nginx:latest
RUN mkdir -p /var/lib/crl
RUN echo "\nstream {\n    include /etc/nginx/conf.d/*.stream;\n}" >> /etc/nginx/nginx.conf
