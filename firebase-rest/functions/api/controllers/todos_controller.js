'use strict'

const Controller = require('./controller')
const todoModel = require('../models/todo_model')

const todosController = new Controller(todoModel)
module.exports = todosController.router