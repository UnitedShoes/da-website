# Use a minimal Node.js image
FROM node:18-alpine

# Install serve globally
RUN npm install -g serve

# Set working directory
WORKDIR /app

# Copy all website files (e.g., index.html, styles, etc.)
COPY . .

# Expose the port serve will use
EXPOSE 5003

# Start the server
CMD ["serve", "-s", ".", "-l", "5003"]