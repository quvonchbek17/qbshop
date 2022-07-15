import { fetchData } from '../../utils/postgres.js'

const notebooks = `
    Select p.product_name, p.product_price, p.product_desc, p.product_img_link, p.product_category_id FROM products p inner join categories c on c.category_name = 'notebooks' where p.product_category_id = c.category_id;
`

//FUNCTIONS


const getNotebooks = () => fetchData(notebooks)

export default {
    getNotebooks
}