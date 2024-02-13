FROM node:14 as build

WORKDIR /usr/local/app

COPY ./ /usr/local/app/

RUN npm install

RUN npm run build

FROM nginx:latest

COPY --from=build /usr/local/app/dist/newangular /usr/share/nginx/html
COPY --from=build /usr/local/app/conf /etc/nginx/

EXPOSE 80