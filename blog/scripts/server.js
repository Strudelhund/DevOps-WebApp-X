const express = require('express');
const app = express();

// Define a simple /healthz endpoint
app.get('/healthz', (req, res) => {
  res.status(200).send('OK');
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});