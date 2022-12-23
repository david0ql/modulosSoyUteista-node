const { response } = require("express");
const { connection } = require("../common/conexionMysql");
const find = (req, res = response) => {
  //hacer query para buscar todos
  connection.query(
    `
    SELECT * FROM convocatorias
    `,
    [],
    function (err, result, fields) {
      err ? res.json(err) : res.json(result);
    }
  );
};

const create = (req, res = response) => {
  connection.query(
    `
  INSERT INTO convocatorias  
  (titulo, descripcion, foto, url)
  values (?, ?, ?, ?)`,
    [req.body.titulo, req.params.descripcion, req.body.foto, req.body.url],
    function (err, result, fields) {
      err ? res.json(err) : res.json(result);
    }
  );
};

const remove = (req, res = response) => {
  connection.query(
    `
  DELETE FROM convocatorias 
  WHERE idConvocatoria = ?`,
    [req.params.idConvocatoria],
    function (err, result, fields) {
      err ? res.json(err) : res.json(result);
    }
  );
};

module.exports = {
  find,
  create,
  remove,
};
