FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY Loto.mp4 /usr/share/nginx/html/Loto.mp4
EXPOSE 8080
RUN printf 'server {\n    listen 8080;\n    root /usr/share/nginx/html;\n    index index.html;\n}\n' > /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]
