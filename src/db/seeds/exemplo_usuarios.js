exports.seed = async function(knex) {
  await knex('usuarios').del();

  await knex('usuarios').insert([
    { nome: 'Maria Oliveira', data_nascimento: '1980-01-15', telefone: '11911112222', email: 'maria@exemplo.com' },
    { nome: 'Carlos Souza', data_nascimento: '1992-08-23', telefone: '11933334444', email: 'carlos@exemplo.com' },
    { nome: 'Ana Costa', data_nascimento: '2000-05-10', telefone: '11955556666', email: 'ana@exemplo.com' }
  ]);
};
