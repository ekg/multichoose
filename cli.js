#!/usr/bin/env node

var multichoose = require('multichoose')

if (process.argv.length < 3) {
  console.log('usage:', process.argv[1], '<k>', '[item_1, ..., item_n] # ~ n multichoose k')
  console.log('output the multiset combinations of size k from n items using an efficient loopless algorithm')
  process.exit(1)
}

var k = process.argv[2]
var objects = process.argv.slice(3, process.argv.length)

multichoose(k, objects, function(x) {
  console.log(x.join(' '))
})
