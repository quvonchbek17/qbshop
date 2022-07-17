import express from 'express'
const router = express.Router()

import products from './products/product.js'

router
    .get('/notebooks', products.GETNotebooks)
    .get('/phones', products.GETPhones)
    .get('/appliances', products.GETAppliances)
    .get('/sport', products.GETSport)


export default router