FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN apt-get update \
   && apt-get install -y awscli
RUN npm install


# Bundle app source
COPY . .

EXPOSE 80
CMD [ "npm", "start" ]