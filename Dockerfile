FROM nginx:alpine

WORKDIR /app

COPY index.html /usr/share/nginx/html/index.html (optional)

COPY nginx.conf /app


EXPOSE 80
