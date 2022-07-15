import dotenv from "dotenv";
import express from "express";
import router from './modules/index.js'
import cors from 'cors'


dotenv.config()
const app = express()
app.use(router)
app.use(cors())
const PORT = process.env.PORT || 8000



app.listen(PORT)