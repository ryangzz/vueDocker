# Use an official Node.js runtime as a parent image
FROM node

# Set the working directory in the container to /app
WORKDIR /app

# Install Vue CLI globally
RUN npm install -g @vue/cli

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port that the Vue development server will run on
EXPOSE 8080

# Start the Vue development server with live-reload
CMD ["npm", "run", "serve"]
