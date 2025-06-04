exports.up = async function(knex) {
  await knex.raw(`CREATE DATABASE IF NOT EXISTS ${process.env.DB_NAME}`);
};

exports.down = async function(knex) {
  await knex.raw(`DROP DATABASE IF EXISTS ${process.env.DB_NAME}`);
};
