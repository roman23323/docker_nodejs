const http = require('http');

const PORT = process.env.PORT || 3000;

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Hello from Nodejs and Kopiy Ilya!\n');
});

server.listen(PORT, () => {
  console.log(`Сервер запущен на порту ${PORT}`);
});