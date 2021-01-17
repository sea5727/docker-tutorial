const express = require('express')

const PORT = 8080

const app = express()

app.get('/', (req, res) => {
    res.send('Hello World 테스트 22222')
})

app.listen(PORT)

console.log(`Server Open!! ${PORT}`)

