# Use official Nginx image
FROM nginx:alpine

# Remove default nginx.html file
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files (index.html, images, css, etc.)
COPY . /usr/share/nginx/html

# Expose port 8081
EXPOSE 8081

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
