import model from './model.js'

const GETNotebooks = async(req, res) => {
    try {
        res.json(await model.getNotebooks())
    } catch(err) {
        console.log(err.message)
        res.sendStatus(500)
    }
}

export default {
    GETNotebooks
}