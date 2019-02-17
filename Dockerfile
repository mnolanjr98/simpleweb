# Base Image
# FROM alpine
FROM node:alpine

# Ensure we don't put our files in root
WORKDIR /usr/app

# Dependencies
# We could install NPM here
#RUN mkdir /data

# This is in-efficient as the npm installs are run after each source change
# COPY ./ ./
# RUN npm install
COPY package*.json ./
RUN npm install
COPY ./ ./
# With the first copy, we only resolve node packages when our dependencies truly change

# Default command
CMD ["npm", "start"]