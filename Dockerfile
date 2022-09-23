# syntax=docker/dockerfile:1
FROM node:12-alpine

# Update aptitude with new repo
RUN apk update

# Install software 
RUN apk add git
RUN apk add python3

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
RUN git clone https://github.com/Sebas572/Test-Render
WORKDIR /usr/src/app/Test-Render/

# aca supuestamente se instala las dependencias
RUN yarn install
RUN ls
RUN du -sh node_modules/


CMD ["node", "./index.js"]
#CMD ["python3", "-m", "http.server", "3000"]
