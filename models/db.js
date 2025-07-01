
// conexão com banco de dados
        const Sequilize = require('sequelize')
        const sequilize = new Sequilize('postapp','root','',{
            host: "localhost",
            port: 33066, // sua porta personalizada
            dialect: "mysql"
        })

module.exports = {
    Sequilize: Sequilize,
    sequilize: sequilize
}