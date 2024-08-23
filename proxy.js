const express = require('express');
const request = require('request');
const app = express();
const PORT = 3000;

app.use((req, res) => {
    const url = req.url.slice(1); // Remove leading '/'
    request(url).pipe(res);
});

app.listen(PORT, () => {
    console.log(`Proxy server is running at http://localhost:${PORT}`);
});
