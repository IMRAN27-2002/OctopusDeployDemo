# Use a lightweight Node.js base image
FROM node:18-slim

# Set working directory
WORKDIR /app

# Copy only package files first (for better caching)
COPY package*.json ./

# Install all dependencies (including dev)
RUN npm install

# Copy application source code
COPY . .

# Set environment variables for development
ENV NODE_ENV=development
ENV PORT=3000

# Expose the app port
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
