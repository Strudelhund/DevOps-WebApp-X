# Use the official Node.js image as a parent image
FROM node:14

# Set the working directory inside the container
WORKDIR /blog

# Copy package.json and package-lock.json to the container
COPY ./blog/package.json ./blog/package-lock.json ./blog/

# Install project dependencies
RUN cd ./blog && npm install

# Copy the rest of the application files to the container
COPY ./blog/ ./blog/

# Build the Next.js application
RUN cd ./blog && npm run build

# Expose the port the app will run on
EXPOSE 3000

# Start the Next.js application
CMD ["node", "./blog/node_modules/next/dist/bin/next", "start", "--port", "3000"]
