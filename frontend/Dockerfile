FROM node:14.18-alpine

WORKDIR /frontend

COPY package.json yarn.lock ./

RUN yarn \
    && yarn cache clean

COPY . .

CMD ["yarn", "start"]
