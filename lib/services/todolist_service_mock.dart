import '../models/todo.dart';
import 'todolist_service.dart';

class TodolistServiceMock implements TodolistService {
  final _data = [Todo(title: 'Hello World'), Todo(title: 'How are you')];

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
