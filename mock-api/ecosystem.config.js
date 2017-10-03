module.exports = {
  apps : [{
    name        : "mock-api",
    script      : "./src/index.js",
    watch       : true,
    env: {
      "NODE_ENV": "development",
    },
    env_production : {
       "NODE_ENV": "production"
    }
  }]
}

