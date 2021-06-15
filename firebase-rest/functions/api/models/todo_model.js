'use strict'

const Model = require('./model')

// Here, we are implementing the class with Singleton design pattern

class TodoModel extends Model {
    constructor() {
        super('todos')
        if (this.instance) return this.instance
        TodoModel.instance = this
    }
}

module.exports = new TodoModel()