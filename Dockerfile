FROM nginx:latest

WORKDIR /usr/local/app

COPY ./conf /etc/nginx/

EXPOSE 80