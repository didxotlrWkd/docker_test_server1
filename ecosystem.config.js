module.exports = {
    apps: [
        {
          name: 'server1',
          script: 'src/app.js', 
          instances: 1,
          exec_mode: 'fork',
          env: {
            NODE_ENV: 'production',
            SERVER_URL: 'http://server1:7777'
          }
        },
    ],
  };