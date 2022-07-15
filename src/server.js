import dotenv from "dotenv";
import express from "express";

dotenv.config()
const app = express()
const PORT = process.env.PORT || 9000

app.get('/products', (req, res) => {
    res.send('ok')
})



app.listen(PORT)