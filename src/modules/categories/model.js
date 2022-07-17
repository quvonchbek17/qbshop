import { fetchData } from '../../utils/postgres.js'

const categories = `
    Select * from categories
`

const getCategories = () => fetchData(categories)

export default {
    getCategories
}