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

