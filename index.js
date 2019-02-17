const express = require('express');

const app = express();

app.get('/', (req, res) => {
    console.log('Serving request to path /');
    res.send('Hi There! We have changed!');
});

app.listen(8080, () => {
    console.log('Listening on port 8080');
});