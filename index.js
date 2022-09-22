const express = require('express');
const app = express();
require('dotenv').config();

app.get('/', (req, res, next) => {
	res.send('Hello World');
});

app.listen(process.env.PORT, () => {
	console.log('init server');
});