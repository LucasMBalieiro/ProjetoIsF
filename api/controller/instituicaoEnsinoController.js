import { db } from "../db.js";

export const getInstituicaoEnsino = (_, res) => {
  const q = "SELECT * FROM instituicaoensino";

  db.query(q, (err, data) => {
    if (err) return res.json(err);

    return res.status(200).json(data);
  })
}

export const getSelectedInstituicaoEnsino = (req, res) => {
  const q = "SELECT * FROM usuario WHERE logon = ?"

  db.query(q, req.params.logon, (err, data) => {
    if (err) return res.json(err);

    return res.status(200).json(data);
  });
};

export const postInstituicaoEnsino = (req, res) => {
  const q = "INSERT INTO usuario(logon,nome,sobrenome,DDI,DDD,telefone,raca,genero,nomeEmail,dominio,senha,tipo) VALUES(?)";

  const values = [
    req.body.logon,
    req.body.nome,
    req.body.sobrenome,
    req.body.DDI,
    req.body.DDD,
    req.body.telefone,
    req.body.raca,
    req.body.genero,
    req.body.nomeEmail,
    req.body.dominio,
    req.body.senha,
    req.body.tipo,
  ]

  db.query(q, [values], (err) => {
    if (err) return res.json(err)

    return res.status(200).json("Usuario criado com sucesso")
  })
}

export const putInstituicaoEnsino = (req, res) => {
  const q = "UPDATE usuario SET nome = ?, sobrenome = ?,DDI = ?,DDD = ?,telefone = ?,raca = ?,genero = ?,nomeEmail = ?,dominio = ?,senha = ?,tipo = ? where logon = ?"

  const values = [
    req.body.nome,
    req.body.sobrenome,
    req.body.DDI,
    req.body.DDD,
    req.body.telefone,
    req.body.raca,
    req.body.genero,
    req.body.nomeEmail,
    req.body.dominio,
    req.body.senha,
    req.body.tipo
  ]

  db.query(q, [...values, req.params.logon], (err) => {
    if (err) return res.json(err)

    return res.status(200).json("Usuário " + req.params.logon + " atualizado com sucesso")
  })
}

export const deleteInstituicaoEnsino = (req, res) => {
  const q = "DELETE FROM usuario where logon = ?"

  db.query(q, [req.params.logon], (err) => {
    if(err) return res.json(err)

    return res.status(200).json("Usuario deletado com sucesso")
  })
}