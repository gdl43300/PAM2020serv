
const fs = require('fs')


tab = JSON.parse(fs.readFileSync('../public/xkcd.json'))

dernier = tab[0]

console.log(dernier.num)
