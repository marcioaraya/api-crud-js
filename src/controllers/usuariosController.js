const db = require('../db/knex');

exports.obter = async (req, res) => {
  try {
    const usuario = await db("usuarios").where({ id: req.params.id }).first();
    if (!usuario) {
      return res.status(404).json({ erro: "Usuário não encontrado" });
    }
    res.json(usuario);
  } catch (error) {
    res.status(500).json({ erro: "Erro ao buscar usuário" });
  }
};

exports.listar = async (req, res) => {
  try {
    const usuarios = await db('usuarios');
    res.json(usuarios);
  } catch (err) {
    res.status(500).json({ erro: 'Erro ao listar usuários' });
  }
};

exports.inserir = async (req, res) => {
  try {
    const { nome, data_nascimento, telefone, email } = req.body;
    await db('usuarios').insert({ nome, data_nascimento, telefone, email });
    res.status(201).json({ mensagem: 'Usuário inserido com sucesso' });
  } catch (err) {
    res.status(500).json({ erro: 'Erro ao inserir usuário' });
  }
};

exports.atualizar = async (req, res) => {
  try {
    const { id } = req.params;
    const { nome, data_nascimento, telefone, email } = req.body;
    await db('usuarios').where({ id }).update({ nome, data_nascimento, telefone, email });
    res.json({ mensagem: 'Usuário atualizado com sucesso' });
  } catch (err) {
    res.status(500).json({ erro: 'Erro ao atualizar usuário' });
  }
};

exports.excluir = async (req, res) => {
  try {
    const { id } = req.params;
    await db('usuarios').where({ id }).del();
    res.json({ mensagem: 'Usuário excluído com sucesso' });
  } catch (err) {
    res.status(500).json({ erro: 'Erro ao excluir usuário' });
  }
};
