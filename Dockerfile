# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the app source code to the container
COPY . .

# Build the SvelteKit app
RUN npm run build

# Expose the port that the app will run on
EXPOSE 3000

# Specify the command to run your app
CMD ["npx", "http-server", "build", "-p", "3000"]