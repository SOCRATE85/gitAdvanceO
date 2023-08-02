# Use the official Node.js image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container's working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the container's working directory
COPY . .

# Expose the port on which your Node.js app listens (assuming your app uses port 3000)
EXPOSE 3000

# Set the command to run your Node.js application
CMD ["node", "app.js"]
