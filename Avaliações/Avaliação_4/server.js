const express = require('express');
const app = express();
const port = 3000;

app.use(express.json());

app.post('/temperature', (req, res) => {
  const temperature = req.body.temperature;
  console.log(`Temperatura recebida: ${temperature}`);
  res.sendStatus(200);
});

app.listen(port, () => {
  console.log(`Servidor escutando na porta ${port}`);
});
