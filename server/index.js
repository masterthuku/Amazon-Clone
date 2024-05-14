//imports from packages
const express = require("express");
const mongoose = require("mongoose");

//initialization
const PORT = 3000;
const app = express();
const DB = "mongodb+srv://peterthuku706:SgGre3aSHHgUPHpz@cluster0.vwpzrvp.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0"

//imports from files
const authRouter = require("./routes/auth");

//middleware
app.use(express.json());
app.use(authRouter);

// connections
mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection successful");
  })
  .catch((err) => {
    console.log(err);
  });

app.listen(PORT, "0.0.0.0", () => {
  console.log(`Server listening on port ${PORT}`);
});
