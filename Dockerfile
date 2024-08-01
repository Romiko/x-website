# Use the official NGINX image from the Docker Hub
FROM nginx:alpine

# Remove the default NGINX website
RUN rm -rf /usr/share/nginx/html/*

# Copy our custom HTML file to the NGINX web directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start NGINX when the container has provisioned
CMD ["nginx", "-g", "daemon off;"]
