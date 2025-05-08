FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

WORKDIR /data

COPY . .

EXPOSE 8088:80
