import { fetchData } from '../../utils/postgres.js'

const notebooks = `
    Select * FROM products p inner join categories c on c.category_name = 'notebooks' where p.product_category_id = c.category_id;
`

//FUNCTIONS


const getNotebooks = () => fetchData(notebooks)

export default {
    getNotebooks
}