# Use the official Nginx image as the base image
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Remove the default nginx static files
RUN rm -rf ./*

# Copy all website files (HTML, CSS, JS, images, etc.) from your project into the image
# This will copy EVERYTHING in your project folder, including subfolders for images, scripts, etc.
COPY . .

# Expose port 80
EXPOSE 80

# Start nginx (this is default, included for clarity)
CMD ["nginx", "-g", "daemon off;"]
