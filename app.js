const express = require("express") // como é um modulo do npm, nao precisa especificar o diretorio
const app = express();

app.get("/",function (req, res) {
    res.send("seja bem vindo ao app")
})

app.listen(8989,function () {
    console.log('servidor rodando')
})

