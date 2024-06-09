# Use the official Node.js image as the base image
FROM node:18.19

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the Angular CLI globally
RUN npm install -g @angular/cli

# Install project dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . .

# Expose port 4200 to access the Angular app
EXPOSE 4200

# Run the Angular application
CMD ["ng", "serve", "--host", "0.0.0.0"]