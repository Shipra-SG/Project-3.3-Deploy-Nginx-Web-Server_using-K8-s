FROM nginx:alpine

WORKDIR /app

COPY index.html /usr/share/nginx/html/index.html

COPY nginx.conf /app


EXPOSE 80
