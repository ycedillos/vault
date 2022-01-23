# pull official base image
FROM node:14.18.2 AS development

# set working directory
WORKDIR /app

# add app
COPY . ./

