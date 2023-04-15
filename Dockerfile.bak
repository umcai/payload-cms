FROM arm64v8/node:16
# FROM keymetrics/pm2:latest-alpine

# Bundle APP files
WORKDIR /app
COPY . .

# Install app dependencies
ENV NPM_CONFIG_LOGLEVEL warn
RUN yarn install --production
RUN yarn build

# Expose the listening port of your app
EXPOSE 3000

# Show current folder structure in logs
RUN ls -al -R

RUN yarn add pm2 -g

CMD [ "pm2-runtime", "start", "ecosystem.config.js" ]
