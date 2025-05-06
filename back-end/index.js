// Đọc biến môi trường từ file .env
require('dotenv').config();

//Nhúng các thư viện đã cài
const express = require('express');
const cors = require('cors');
const morgan = require('morgan');

//Nhúng cổng PORT từ file .env
const port = process.env.PORT

//Nhúng file auth.route để định tuyến
const authRouter = require('./src/modules/auth/router/auth.routes');

const app = express();

app.use(cors());
app.use(morgan('dev'));
app.use(express.json());

app.use('/api', authRouter);

app.listen(port, () => {
    console.log(`http://localhost:${port}`);
});
