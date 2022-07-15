import { config } from "dotenv";

config()

export default {
    connectionString: `postgres://postgres:${process.env.DB_PASSWORD}@localhost:5432/najot`
}