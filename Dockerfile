FROM nginx:alpine
COPY . /usr/share/nginx/html
RUN echo 'server { listen $PORT; location / { root /usr/share/nginx/html; index index.html; } }' > /etc/nginx/conf.d/default.conf
CMD sh -c "sed -i 's/\$PORT/'$PORT'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
