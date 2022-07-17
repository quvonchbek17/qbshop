import { fetchData } from '../../utils/postgres.js'

const notebooks = `
    Select p.product_id, p.product_name, p.product_price, p.product_desc, p.product_img_link, p.product_category_id FROM products p inner join categories c on c.category_name = 'notebooks' where p.product_category_id = c.category_id;
`

const phones = `
    Select p.product_id, p.product_name, p.product_price, p.product_desc, p.product_img_link, p.product_category_id FROM products p inner join categories c on c.category_name = 'phones' where p.product_category_id = c.category_id;
`

const appliances = `
    Select p.product_id, p.product_name, p.product_price, p.product_desc, p.product_img_link, p.product_category_id FROM products p inner join categories c on c.category_name = 'appliances' where p.product_category_id = c.category_id;
`

const sport = `
    Select p.product_id, p.product_name, p.product_price, p.product_desc, p.product_img_link, p.product_category_id FROM products p inner join categories c on c.category_name = 'sport' where p.product_category_id = c.category_id;
`

//FUNCTIONS

const getNotebooks = () => fetchData(notebooks)
const getPhones = () => fetchData(phones)
const getAppliances = () => fetchData(appliances)
const getSport = () => fetchData(sport)

export default {
    getNotebooks,
    getPhones,
    getAppliances,
    getSport
}