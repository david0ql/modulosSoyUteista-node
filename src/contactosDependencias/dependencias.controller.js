const express = require("express");
const dependencias = express.Router();
const { find, create, remove } = require("./dependencias.service");

dependencias.use((req, res, next) => {
  next();
});

dependencias.get("/", find);

dependencias.post("/", create);

dependencias.delete("/:idDependencia", remove);

module.exports = {
  dependencias
};
