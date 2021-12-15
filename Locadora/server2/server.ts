import  express from "express";
import usuarioRouter from "./src/routes/usuario.routes";

const app= express();
const port= 3000;


app.use(function(req,res,next){
    res.setHeader('Access-Control-Allow-Origin', 'http://localhost:4200');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');
    res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');
    next();
})

app.use(express.json());
app.use('/login&cadastro',usuarioRouter);

app.listen(port, () => {
    console.log(`Servidor rodando na porta ${port}`);
});