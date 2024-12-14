# Step 1: Use a base image that has both NGINX and Git installed
FROM nginx:latest

# Step 2: Install Git (as it's not available by default in the NGINX image)
RUN apt-get update && apt-get install -y git && rm -rf /usr/share/nginx/html/*

# Step 3: Clone the repository (replace the URL with your actual repository URL)
RUN git clone https://github.com/MadhuManvi/Docker.git /usr/share/nginx/html

# Step 4: Expose port 80 so we can access the NGINX server
EXPOSE 80



