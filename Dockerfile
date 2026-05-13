# Use official Nginx image
FROM nginx:latest

# Copy index.html to Nginx default folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80
