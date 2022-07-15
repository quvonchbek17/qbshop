import pg from 'pg'
const Pool = pg.Pool
import cn from '../config/db.js'

const pool = new Pool({
    connectionString: cn.connectionString
})

const fetchData = async(query, ...params) => {

    const client = await pool.connect()
    try {
        const { rows } = await client.query(query, params.length ? params : null)
        return rows
    } finally {
        client.release()
    }
}

export {
    fetchData
}