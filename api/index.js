import express from "express"
import userRoutes from "./routes/user.js"
import instituicaoEnsinoRoutes from "./routes/instituicaoEnsino.js"
import cors from "cors"

const app = express()

app.use(express.json())
app.use(cors())

app.use("/", userRoutes)
app.use("/", instituicaoEnsinoRoutes)

app.listen(8800)