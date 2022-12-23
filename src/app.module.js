const express = require("express");
const app = express();
const cors = require("cors");
const { dependencias } = require("./contactosDependencias/dependencias.controller");

app
  .use(cors())
  .use(express.json())
  .use("/dependencias", dependencias)
  .listen(9091)