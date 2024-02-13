FROM nginx:latest

WORKDIR /usr/local/app

COPY ./conf /etc/nginx/

COPY ./ssl /usr/share/nginx/ssl

EXPOSE 80