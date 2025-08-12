# Use nginx alpine base image and copy the static site into the web root
FROM nginx:alpine

# Remove default html (optional) and copy current dir to nginx html dir
RUN rm -rf /usr/share/nginx/html/*
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# nginx:alpine has the correct CMD, so nothing else is needed