# Use a lightweight NGINX image
FROM nginx:alpine

# Remove default NGINX static content
RUN rm -rf /usr/share/nginx/html/*

# Copy game files into NGINX's public directory
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Expose HTTP port
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]

