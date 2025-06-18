# API REST para implementar CRUD de tabela
  
## Pré-requisitos:
1. Ter o **node** instalado. Para fazer o download acesse https://nodejs.org/pt/download . Prefira o download de uma versão LTS.
2. Ter um banco **MySQL** instalado . Para fazer o download acesse https://dev.mysql.com/downloads/. Pode usar também o **MariaDB** que é instalado com o XAMPP, disponível em https://www.apachefriends.org/pt_br/index.html. 
  
Para executar este código siga os seguintes passos:  
## Baixar o código e script para criar a base de dados
1. Abra um shell (cmd ou git bash ou PowerShell)
2. Clone o código deste repositório (pode ser dentro de qualquer pasta em seu computador na qual tenha permissão de escrita):
```
git clone https://github.com/marcioaraya/api-crud-js.git 
```
3. Mude para dentro da pasta criada `api-crud-js`:
```
cd api-crud-js
```
4. Nessa pasta digite o comando abaixo (vai instalar os pacotes listados nas dependências):
```
npm install
```
5. Copie o arquivo `.env-modelo` para `.env`.  
6. Edite o arquivo `.env` para que fique com os valores adequados ao seu ambiente.


  
### Criar a base de dados  

Pode criar a base de dados de exemplo de duas formas (escolha apenas uma das maneiras):  
  
#### Usando migrations do knex  
1. Crie o schema `facsenac` (no MySQL database e schema são sinônimos).
   a. Acesse o **MySQL** ou **MariaDB**, e execute o comando:
   ```
   CREATE DATABASE IF NOT EXISTS facsenac;
   ```
2. Depois, em um shell digite:
```
npx knex migrate:latest --knexfile knexfile.js
```
irá criar a tabela `usuarios`  


3. Depois, digite:
```
npx knex seed:run --knexfile knexfile.js
```
irá inserir 3 linhas de exemplo.  


#### Importar o arquivo com a definição do schema facsenac e tabela usuarios.
1. No MySQL execute os comandos que estão no arquivo `database-facsenac.sql` que está na pasta `banco-de-dados`. Nesse arquivo estão incluídos os comandos para criar o database `facsenac`, a tabela `usuarios` e inserir três linhas de exemplo.  
   

Para ambos casos, caso deseje ver as linhas inseridas com os nomes em ordem alfabética, digite:  
```
select * from usuarios order by nome;
```  

### Iniciando a aplicação
  
Para iniciar a aplicação digite:
```
npm run dev
```

Vai aparecer a mensagem: 
```
> api-crud@1.0.0 dev
> nodemon src/server.js

[nodemon] 3.1.10
[nodemon] to restart at any time, enter `rs`
[nodemon] watching path(s): *.*
[nodemon] watching extensions: js,mjs,cjs,json
[nodemon] starting `node src/server.js`
Servidor rodando na porta 3000
```


Depois abra o navegador e digite:
http://localhost:3000/index.html

