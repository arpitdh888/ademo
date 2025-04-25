# Use the official NGINX image as a base
FROM nginx:alpine

# Maintainer info (optional)
LABEL maintainer="arpitdhiman900@gmail.com"

# Remove default nginx web content
RUN rm -rf /usr/share/nginx/html/*

# Copy your custom HTML content into the nginx directory
COPY index.html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx (this is default in the base image, included for clarity)
CMD ["nginx", "-g", "daemon off;"]
