module.exports = {
  apps : [{
    name: 'payload-app',
    script: 'dist/server.js',
    watch: '.',
    env: {
      NODE_ENV: "development",
    },
    env_production: {
      NODE_ENV: "production",
      PAYLOAD_CONFIG_PATH: "dist/payload.config.js"
    }
  }],
};
