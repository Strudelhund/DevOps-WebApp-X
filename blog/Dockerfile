# Use the official Node.js image as a parent image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY ./web-app/package.json ./web-app/package-lock.json ./web-app/

# Install project dependencies
RUN cd ./web-app && npm install

# Copy the rest of the application files to the container
#COPY ./web-app/ ./web-app/

# Build the Next.js application
RUN cd ./web-app && npm run build

# Expose the port the app will run on
EXPOSE 3000

# Start the Next.js application
CMD ["node", "./web-app/node_modules/next/dist/bin/next", "start", "--port", "3000"]
