FROM node:21.5.0-alpine3.19

# Arguments
ARG APP_HOME=/home/node/app

# Create app directory
WORKDIR ${APP_HOME}

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . ./

EXPOSE 8000

CMD ["node", "/home/node/app/server.js"]
