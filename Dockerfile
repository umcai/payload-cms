FROM arm64v8/node:16-alpine
# FROM keymetrics/pm2:latest-alpine

# Bundle APP files
WORKDIR /app
COPY . .

# Install app dependencies
ENV NPM_CONFIG_LOGLEVEL warn
RUN npm install --production

# Expose the listening port of your app
EXPOSE 3000

# Show current folder structure in logs
RUN ls -al -R

RUN npm install pm2 -g

CMD [ "pm2-runtime", "start", "ecosystem.config.js" ]
