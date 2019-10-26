import express from 'express';
import helmet from 'helmet';

// setup express
const app = express();

// use helmet for security
app.use(helmet());

// hello world
app.get('/', (req, res) => {
  res.send('Hello world\n');
});

// export
export default app;
