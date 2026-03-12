# Use official Node LTS image
FROM node:16slim


# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json (if exists)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project
COPY . .

# Expose port for Expo web
EXPOSE 19006

# Start Expo in web mode
CMD ["npm", "run", "web"]
