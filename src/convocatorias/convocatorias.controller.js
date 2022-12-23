const express = require("express");
const convocatorias = express.Router();
const { find, create, remove } = require("./convocatorias.service");

convocatorias.use((req, res, next) => {
  next();
});

convocatorias.get("/", find);

convocatorias.post("/", create);

convocatorias.delete("/:idConvocatoria", remove);

module.exports = {
  convocatorias
};
