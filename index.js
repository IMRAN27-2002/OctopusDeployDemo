// index.js
const express = require('express');
const app = express();

const PORT = process.env.PORT || 3000;
const VERSION = process.env.APP_VERSION || "dev";

app.get('/', (req, res) => {
  res.send(`<h1>Octopus demo app</h1>
            <p>Version: <strong>${VERSION}</strong></p>
            <p>Time: ${new Date().toISOString()}</p>`);
});

app.listen(PORT, () => {
  console.log(`Listening on ${PORT} - version ${VERSION}`);
});
