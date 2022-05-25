FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY . .

RUN npm install

EXPOSE 3333

CMD [ "node", "/server/mongodb-proxy.js" ]

 
