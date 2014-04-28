express = require('express')
etsyjs = require('../etsyJS/lib/etsyjs')

client = etsyjs.client('API_KEY')
app = express()

app.get '/', (req, res) ->
  client.user("username").getUser (err, body, headers) ->
    console.log body
    return

  res.send('Hello World')

server = app.listen 3000, ->
  console.log 'Listening on port %d', server.address().port