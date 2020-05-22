FROM node:12-alpine

WORKDIR /home/node/app

ENV PATH /home/node/app/node_modules/.bin:$PATH
ENV NODE_ENV production
COPY package*.json /home/node/app/
RUN npm ci
COPY . /home/node/app

CMD [ "npm", "start" ]