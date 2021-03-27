FROM nginx:1.19-alpine
LABEL MAINTAINER="victor efedi "victorefedi@gmail.com""

#copying the file
COPY ./index.html /usr/share/nginx/html/index.html