FROM nginx

RUN rm -rf /var/log/nginx/*

COPY index.html /usr/share/nginx/html/index.html