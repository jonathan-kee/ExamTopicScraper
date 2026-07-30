// Link to 
// https://nodejs.org/learn/command-line/how-to-read-environment-variables-from-nodejs#loading-env-files-programmatically-with-processloadenvfilepath
import { loadEnvFile } from 'node:process';
import { equal } from "assert";
import test from 'node:test';

test('test .env file', async t => {
    loadEnvFile('./.env');
    equal(process.env.RDS_DB_NAME,'postgres')
    equal(process.env.RDS_USERNAME,'postgres')
    equal(process.env.RDS_PASSWORD, 'abc123')
    equal(process.env.RDS_HOST,'localhost')
    equal(process.env.PORT, 5432)
} )