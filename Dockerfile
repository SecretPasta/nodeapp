# Use an official Node runtime as a parent image
FROM node:14

# Create the directory and its parents if they don't exist
RUN mkdir -p /usr/src/app

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json /usr/src/app/

# Install app dependencies
RUN npm install

# Explicitly copy the nodeapp.js file to the working directory
COPY nodeapp.js /usr/src/app/

# Bundle app source
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["node", "nodeapp.js"]
