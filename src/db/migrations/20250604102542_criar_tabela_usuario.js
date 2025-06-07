// antes de executar esta migration crie o banco de dados (schema) definido por DB_NAME manualmente no MySQL
//
// pode fazer isso executando o comando 
// CREATE DATABASE <DB_NAME> IF NOT EXISTS;
//
// CASO não deseje usar migrations, na pasta banco-de-dados tem o script que pode ser importado para criar a base de dados facsenac
//
 

exports.up = function (knex) {
  return knex.schema.createTable('usuarios', function (table) {
    table.increments('id').primary();
    table.string('nome', 120).notNullable();
    table.date('data_nascimento').notNullable();
    table.string('telefone', 15).notNullable();
    table.string('email', 120).notNullable().unique();
  });
};

exports.down = function (knex) {
  return knex.schema.dropTable('usuarios');
};

