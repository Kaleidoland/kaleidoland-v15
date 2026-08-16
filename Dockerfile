FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
RUN printf 'server { listen 8080; root /usr/share/nginx/html; index index.html; location / { try_files $uri $uri/ /index.html; } }\n' > /etc/nginx/conf.d/default.conf
EXPOSE 8080
