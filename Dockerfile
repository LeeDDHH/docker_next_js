# ARG APP_HOME=/home/node/app

# build
FROM node:16.18-alpine as build
WORKDIR /usr/src/app

COPY ./frontVolume /usr/src/app
RUN npm install
RUN npm run build

# # deploy
# FROM nginx:1.23.2-alpine
# COPY --from=build ${APP_HOME}/dist /var/www
# COPY ./nginx /etc/nginx/conf.d/

# WORKDIR /usr/share/nginx/html
# CMD ["nginx", "-g", "daemon off;"]
