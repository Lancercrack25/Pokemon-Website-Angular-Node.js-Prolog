const { spawn } = require("child_process");
const path = require("path");

function ejecutarProlog(texto) {
  return new Promise((resolve) => {
    const ruta = `"${path.resolve(__dirname, "prolog", "chatbot.pl")}"`;
    const mensajeSeguro = texto; 
    const args = ["-s", ruta, "-g", "main", "--", mensajeSeguro];
    console.log("Ejecutando SWI-Prolog:", "swipl", args.join(" "));

    const proceso = spawn("swipl", args, { shell: true, timeout: 5000 });

    let output = "";
    let errorOutput = "";

    proceso.stdout.on("data", (data) => {
      output += data.toString();
    });

    proceso.stderr.on("data", (data) => {
      errorOutput += data.toString();
    });

    proceso.on("error", (err) => {
      console.error("Error lanzando Prolog:", err);
      resolve("Lo siento, hubo un error ejecutando Prolog.");
    });

    proceso.on("close", (code, signal) => {
      if (code !== 0) {
        console.error("Prolog finalizó con error:", errorOutput, `Código: ${code}, Señal: ${signal}`);
        return resolve("Lo siento, no pude procesar esa pregunta.");
      }
      if (!output.trim()) {
        return resolve("Lo siento, no entendí la pregunta, intenta nuevamente.");
      }
      resolve(output.trim());
    });
  });
}

async function chatHandler(req, res) {
  const { mensaje } = req.body;

  if (!mensaje || !mensaje.trim()) {
    return res.status(400).json({ error: "Se requiere un 'mensaje' en el body" });
  }

  try {
    const respuesta = await ejecutarProlog(mensaje);
    res.json({ respuesta });
  } catch (err) {
    console.error("Error en chatHandler:", err);
    res.status(500).json({ error: "Ocurrió un error al procesar el mensaje." });
  }
}

module.exports = { chatHandler };