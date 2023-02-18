FROM node:19-alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json .
ENV NODE_ENV=development
RUN npm install

# Copy app
COPY . .
