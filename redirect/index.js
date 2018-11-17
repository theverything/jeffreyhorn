require('http')
  .createServer((req, res) => {
    res.writeHead(301, { Location: `https://www.jeffreyhorn.com${req.url}` });
    res.end();
  })
  .listen();
