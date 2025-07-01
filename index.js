const express = require("express") // como é um modulo do npm, nao precisa especificar o diretorio
const app = express();
const handlebars = require("express-handlebars")// template engine
const bodyParser = require('body-parser')
const Post = require('./models/Post')
// Config
    //Template Engine
        app.engine('handlebars', handlebars.engine({
            defaultLayout: 'main',
            runtimeOptions: {
                allowProtoPropertiesByDefault: true,
                allowProtoMethodsByDefault: true
            }
        }));
        app.set('view engine', 'handlebars');
        
        // body Parser
        app.use(bodyParser.urlencoded({extended: false}))
        app.use(bodyParser.json())
    

// rotas..utilizadas pelo express.. onde mapeamos as paginas
/*
app.get("/", function (req, res) {
    // res.send("seja bem vindo ao app")
     res.sendFile(__dirname+"/html/index.html") // dirname é o diretorio que esta a aplicação
})
*/

app.get("/", function (req, res) {
    // res.send("seja bem vindo ao app")
    Post.findAll({order: [['id','DESC']]}).then(function (posts) {
        res.render('home',{posts: posts})
        
    })
})

app.get("/cad",function (req, res) {
    res.render("formulario")   
})

app.post('/add', function (req, res) { // essa requisição só será acessada pelo metodo POST
  //  req.body.conteudo
  Post.create({
    titulo: req.body.titulo,
    conteudo: req.body.conteudo
  }).then(function () {
    //res.send('Post criado com sucesso!')    
    res.redirect('/')
}).catch(function (erro) {
    res.send("Houve um erro: "+erro)
  })
})

app.get("/deletar/:id",function (req, res) {
    Post.destroy({where: {'id': req.params.id}}).then(function () {
        res.send('Postagem deletada com sucesso')
    }).catch(function (erro) {
        res.send('Esta postagem nao existe! Erro: '+erro)
        
    })
})

app.get("/sobre", function (req, res) {
    // res.send("minha pagina sobre nos")
    res.sendFile(__dirname+"/html/sobre.html")
})
app.get("/blog", function (req, res) { // req é o que recebemos, e o res é o retorno para o ciente
    res.send("seja bem vindo ao blog")
})
app.get("/ola/:nome/:cargo", function (req, res) { // req é o que recebemos, e o res é o retorno para o ciente
    res.send("ola <h1>"+req.params.nome +"</h1><h2>seu cargo e: "+req.params.cargo+"</h2>")
})

app.listen(8989,function () {
    console.log('servidor rodando')
})
