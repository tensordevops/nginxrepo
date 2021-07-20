FROM ubuntu
MAINTAINER "Chinnajee Rao"
RUN apt update
RUN apt install -y nginx
COPY index.html /var/www/html
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
EXPOSE 80
