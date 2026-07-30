import { throws, equal } from "assert";
import test from 'node:test';

function add(arg1: any, arg2: any) {
  if (!Number.isInteger(arg1)) throw Error('inputs must be numbers');
  if (!Number.isInteger(arg2)) throw Error('inputs must be numbers');
  return arg1 + arg2;
}

test('throw when inputs are not numbers', async t => {
  throws(() => add('5', '5'), Error('inputs must be numbers'))
  throws(() => add(5, '5'), Error('inputs must be numbers'))
  throws(() => add('5', 5), Error('inputs must be numbers'))
  throws(() => add({}, null), Error('inputs must be numbers'))
})

test('adds two numbers', async t => {
  equal(add(5, 5), 10)
  equal(add(-5, 5), 0)
})
