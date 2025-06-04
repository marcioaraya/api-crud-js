require('dotenv').config();
const express = require('express');
const app = express();

const usuariosRoutes = require('./src/routes/usuarios');

app.use(express.json());

app.use('/usuarios', usuariosRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});
