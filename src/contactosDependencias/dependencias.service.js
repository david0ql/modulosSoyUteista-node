const { response } = require("express");
const { connection } = require("../common/conexionMysql");
const find = (req, res = response) => {
  //hacer query para buscar todos
  connection.query(
    `
    SELECT dependencias.nombre as dependenciaNombre, contactosDependencia.*
    FROM dependencias 
    INNER JOIN contactosDependencia ON contactosDependencia.idDependencia = dependencias.idDependencia
    `,
    [],
    function (err, result, fields) {
      const groupBy = (input, key) => {
        return input.reduce((acc, currentValue) => {
          let groupKey = currentValue[key];
          if (!acc[groupKey]) {
            acc[groupKey] = [];
          }
          acc[groupKey].push(currentValue);
          return acc;
        }, {});
      };
      
      const materias3 = groupBy(result, "dependenciaNombre");

      const array2 = [];
//organizar por materias
for (const x in materias3) {
  let key = x;
  let value = materias3[x];

  array2.push({
    dependencia: key,
    infoDependencia: value,
  });
}
      err ? res.json(err) : res.json(array2);
    }
  );
};

const create = (req, res = response) => {
  connection.query(
    `
  INSERT INTO carrito  
  (correo_estudiante, id_idea)
  values (?,?)`,
    [req.params.email, req.params.id_idea],
    function (err, result, fields) {
      err ? res.json(err) : res.json(result);
    }
  );
};

const remove = (req, res = response) => {
  connection.query(
    `
  DELETE FROM carrito 
  WHERE id_carrito = ?`,
    [req.params.id_cart],
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
