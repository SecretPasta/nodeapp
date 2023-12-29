# Use an official Node runtime as a parent image
FROM node:14

# Copy package.json and package-lock.json to the working directory
COPY package.json /usr/src/app/

# Set the working directory in the container
WORKDIR /usr/src/app

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["node", "nodeapp.js"]
