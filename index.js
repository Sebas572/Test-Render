const express = require('express');
const app = express();
require('dotenv').config();

app.get('/', (req, res, next) => {
	console.log('TEST');
	res.send('Hello World');
});

app.listen(3000, () => {
	console.log('init server');
});
