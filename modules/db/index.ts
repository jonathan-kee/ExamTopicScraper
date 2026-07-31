import { Pool, QueryResult } from 'pg'
import { loadEnvFile } from 'node:process';

/** Documentation
https://node-postgres.com/apis/pool#poolquery
https://node-postgres.com/guides/project-structure#example
*/

loadEnvFile('./.env');

const pool = new Pool({
/** Client Api Details */
    user: process.env.RDS_USERNAME,
    password: process.env.RDS_PASSWORD,
    host: process.env.RDS_HOST,
    port: Number.parseInt(process.env.PORT ?? "5432"),
    database: process.env.RDS_DB_NAME,
/** Pool Api Details */
    max: 20,
    idleTimeoutMillis: 30000,
    connectionTimeoutMillis: 2000,
    maxLifetimeSeconds: 60,
})

export const dbQuery = async (text: string, params?: any[]) => {
    const start = Date.now()
    const res:QueryResult<any> = await pool.query(text, params)
    const duration = Date.now() - start
    console.log('executed query', { command: res.command , field: res.fields, duration, rows: res.rowCount })
    return res
}

export class DatabaseManager {
    /** Single source of truth for database operations */
    static async executeQuery<T>(query: string, params?: any[]) {
        const result = await dbQuery(query, params);
        return result;
    }
}

/** Notice in the example above there is no need to check out or release a client. 
 * The pool is doing the acquiring and releasing internally. 
 * I find pool.query to be a handy shortcut in many situations and I use it exclusively unless I need a transaction. */

/**Do not use pool.query if you are using a transaction.

The pool will dispatch every query passed to pool.query on the first available idle client. 
Transactions within PostgreSQL are scoped to a single client and so dispatching individual queries within a single transaction across multiple, 
random clients will cause big problems in your app and not work. For more info please read transactions .*/