// 5.1. Adding the express framework //
import express from "express";
// importing the port and using it //
import { PORT } from "./config.js";

// 5.2. Deining expwess variable //
const app = express();

// 5.3. declaring the port
export const PORT = 5555;

// 6.1. Listening on port function //
app.listen(PORT, () => {
  console.log(`Server is listening on port ${PORT}`);
});
