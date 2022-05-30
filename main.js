const ProxyChain = require('proxy-chain');

const server = new ProxyChain.Server({ port: 3128 });

server.listen(() => {
    console.log(`Proxy server is listening on port ${server.port}`);
});

// Emitted when HTTP request fails
server.on('requestFailed', ({ request, error }) => {
    console.log(`Request ${request.url} failed`);
    console.error(error && error.message);
});
