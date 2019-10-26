import app from './app';
import { PORT, HOST } from './config/process-env';

/* eslint-disable no-console */
app.listen(PORT, () => {
  // logger.info(`🚀 Server ready at http://${HOST}:${PORT}`);
  console.log(`🚀 Server ready at http://${HOST}:${PORT}`);
});
/* eslint-enable no-console */
