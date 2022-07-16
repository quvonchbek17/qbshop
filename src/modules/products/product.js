import model from './model.js'

const GETNotebooks = async(req, res) => {
    try {
        res.json(await model.getNotebooks())
    } catch(err) {
        console.log(err.message)
        res.sendStatus(500)
    }
}

const GETPhones = async(req, res) => {
    try {
        res.json(await model.getPhones())
    } catch(err) {
        console.log(err.message)
        res.sendStatus(500)
    }
}

export default {
    GETNotebooks,
    GETPhones
}