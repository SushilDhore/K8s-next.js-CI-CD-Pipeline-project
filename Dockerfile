# Use official Node.js image as a base
FROM node:16 AS build

# Set the working directory
WORKDIR /app

# Copy the package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Next.js app
RUN npm run build

# Expose port for the app
EXPOSE 3000

# Run the Next.js app in production mode
CMD ["npm", "start"]
