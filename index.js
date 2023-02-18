const express = require('express');
const app = express();

const PORT = 3000;

app.get('/', (request, response) => {
  response.send('Hello world from Docker container');
});

app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}`);
});
