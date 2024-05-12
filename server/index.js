console.log('Hello from server')

const express = require('express');
const PORT = 3000;

const app = express();

//creating an api
app.get('/hello world', (req, res) => {
    res.send('Hello World')
})

app.listen(PORT,"0.0.0.0", () => {
    console.log(`Server listening on port ${PORT}`)
});