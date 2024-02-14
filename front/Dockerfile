FROM node:18-alpine as build

WORKDIR /usr/local/app

COPY . /usr/local/app/

RUN npm install

RUN npm run build

FROM nginx:latest

COPY --from=build /usr/local/app/dist/tlcfront /usr/share/nginx/html
COPY --from=build /usr/local/app/conf /etc/nginx/

EXPOSE 80