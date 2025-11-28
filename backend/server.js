const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");
const { chatHandler } = require("./chat.controller");

const app = express();
app.use(cors());
app.use(bodyParser.json());

app.post("/chat", chatHandler);

app.get("/", (req, res) => res.send("¡Backend corriendo correctamente!"));

const PORT = 3000;
app.listen(PORT, () => {
  console.log("Backend corriendo en puerto", PORT);
});



