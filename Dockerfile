# Use the official Node.js image
FROM node:18-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the port
EXPOSE 7777

# Command to run the application
#CMD ["pm2-runtime", "start", "ecosystem.config.js"]
CMD ["node", "src/app.js"]
