import express from 'express'

const app = express()

app.get('/', (req, res) => res.send('Hello Davide!'))

const PORT = 3000
app.listen(PORT, () => console.log(`App listening on port ${PORT}!`))
