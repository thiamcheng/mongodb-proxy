FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY . .

COPY /server/mongodb-proxy.js /usr/src/app/
RUN npm install

EXPOSE 3333

CMD [ "node", "/usr/src/app/mongodb-proxy.js" ]

 
