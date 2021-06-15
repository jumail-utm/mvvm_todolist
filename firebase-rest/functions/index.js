'use strict'
const functions = require("firebase-functions")
const express = require("express")
const app = express();
const todosRouter = require('./api/controllers/todos_controller')

app.use(express.json())
app.use('/todos', todosRouter)

// To handle "Function Timeout" exception
exports.functionsTimeOut = functions.runWith({
    timeoutSeconds: 300
})

exports.api = functions.https.onRequest(app)
