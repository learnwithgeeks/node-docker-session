const express = require('express')

const app = express()
 
app.get('/', function (req, res) {
  res.send('Hello World')
})
 

app.get('/a', function (req, res) {
    res.send('Hello World a')
  })
 
  
app.listen(3000);