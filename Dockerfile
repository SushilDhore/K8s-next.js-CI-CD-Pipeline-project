# Use an official Node.js runtime that meets the Next.js requirements
FROM node:18.18.0-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Build the Next.js app
RUN npm run build

# Expose port 3000 for the Next.js application
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
