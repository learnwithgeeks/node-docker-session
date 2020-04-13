# This file is the main docker file configurations

# Official Node JS runtime as a parent image
FROM node:9-alpine

# Set the working directory to .
WORKDIR .

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

# Install any needed packages
RUN npm install

# Bundle app source
COPY . ./

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run app.js when the container launches
CMD ["npm", "start"]