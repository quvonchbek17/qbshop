import express from 'express'
const router = express.Router()

import products from './products/product.js'
import categories from './categories/category.js'

router
    .get('/notebooks', products.GETNotebooks)
    .get('/phones', products.GETPhones)
    .get('/appliances', products.GETAppliances)
    .get('/sport', products.GETSport)
    .get('/categories', categories.GETCatefories)


export default router