const express = require("express");
const app = express();
const cors = require("cors");
const { dependencias } = require("./contactosDependencias/dependencias.controller");
const { convocatorias } = require("./convocatorias/convocatorias.controller");

app
  .use(cors())
  .use(express.json())
  .use("/dependencias", dependencias)
  .use('/convocatorias', convocatorias)
  .listen(9091)