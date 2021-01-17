const express = require('express')
const redis = require('redis')

const client = redis.createClient({
    host : "redis-server",
    port : 6379
})
client.set("number", 0)

const PORT = 8080

const app = express()

app.get('/', (req, res) => {
    client.get("number", (err, number) => {
        client.set("number", parseInt(number) + 1)
        res.send(`숫자가 1씩 올라갑니다. 숫자 : ${number}`)
    })
})

app.listen(PORT)

console.log(`Server Open!! ${PORT}`)

