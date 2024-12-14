# Use the official NGINX image as a base
FROM nginx:latest

# Copy custom NGINX configuration (optional)
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the web application to NGINX's default HTML directory
COPY . /usr/share/nginx/html

# Expose the port the app will be available on
EXPOSE 80

