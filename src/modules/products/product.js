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

const GETAppliances = async(req, res) => {
    try {
        res.json(await model.getAppliances())
    } catch(err) {
        console.log(err.message)
        res.sendStatus(500)
    }
}

const GETSport = async(req, res) => {
    try {
        res.json(await model.getSport())
    } catch(err) {
        console.log(err.message)
        res.sendStatus(500)
    }
}

export default {
    GETNotebooks,
    GETPhones,
    GETAppliances,
    GETSport
}