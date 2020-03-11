
const fs = require('fs')


dernier = JSON.parse(fs.readFileSync('dernier.json'))

console.log(dernier.num)
