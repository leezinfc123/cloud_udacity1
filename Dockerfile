# Use an official Node.js runtime as the base image
FROM node:20.9-buster-slim

# Set the working directory inside the container
WORKDIR /src

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose a port that the application will listen on
EXPOSE 8082

# Define the command to run your application
CMD ["npm", "run", "dev"]