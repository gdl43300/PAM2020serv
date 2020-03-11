const fs = require("fs")

actuel = JSON.parse(fs.readFileSync("../public/xkcd.json"))

nouveau = JSON.parse(fs.readFileSync("generate.json"))

tab = nouveau.concat(actuel)


//console.log(tab)
fs.writeFileSync("../public/xkcd.json", JSON.stringify(tab))

