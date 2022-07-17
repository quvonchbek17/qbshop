import model from './model.js'

const GETCatefories = async(req, res) => {

    try {
        res.json(await model.getCategories())
    } catch (error) {
        console.log(error.message);
        res.sendStatus(500)
    }
}

export default {
    GETCatefories
}