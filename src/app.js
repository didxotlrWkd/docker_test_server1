const express = require('express');
require('dotenv').config()
const app = express()

app.get('/server1', (req,res)=> {
    const header = req.headers
    const secret = process.env.ENV_SECRET
    res.status(200).json({header , secret});
})

app.listen(7777, () => {
    console.log('Server1 is running on port 7777');
});