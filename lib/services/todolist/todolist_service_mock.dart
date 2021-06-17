import '../../models/todo.dart';

class TodolistServiceMock {
  final _data = [
    Todo(title: 'Hello World'),
    Todo(title: 'How are you. This is from mock data service')
  ];

  Future<List<Todo>> getTodolist() async {
    return [..._data];
  }

  Future<Todo> addTodoItem(Todo todo) async {
    todo.id = '#${_data.length + 1}';
    _data.add(todo);
    return todo;
  }

  Future<Todo> getTodoItem(String id) async {
    return _data.firstWhere((todo) => todo.id == id);
  }
}
