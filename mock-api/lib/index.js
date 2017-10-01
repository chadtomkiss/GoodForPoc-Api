import express from 'express';
import { jsonGraphqlExpress } from 'json-graphql-server';

const PORT = process.env.PORT || 3000;
const app = express();
const data = require('./db.js');

app.use('/graphql', jsonGraphqlExpress(data));

app.listen(PORT, function () {
  console.log(`Mock API listening on port ${PORT}!`);
});
