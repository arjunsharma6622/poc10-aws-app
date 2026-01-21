const express = require("express");
const app = express();

const dotenv = require("dotenv");
dotenv.config();

app.get("/", (req, res) => {
    res.send("Hello from POC10 Server, updated code test");
})

const PORT = process.env.PORT;

app.listen(PORT, (req, res) => {
    console.log(`POC10 Server Running on PORT ${PORT}`);
})