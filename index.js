import express from 'express'

const app = express()

app.get('/', (req, res) => res.send('Goodbye Docker!'))

const PORT = 30000
app.listen(PORT, () => console.log(`App listening on port ${PORT}!`))
