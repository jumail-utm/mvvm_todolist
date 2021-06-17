import 'package:mvvm_todolist/app/dependencies.dart';

import '../../models/todo.dart';
import '../rest.dart';
import 'todolist_service.dart';

class TodolistServiceRest implements TodolistService {
  final RestService _rest = dependency();

  Future<List<Todo>> getTodolist() async {
    final List listJson = await _rest.get('todos');
    return listJson.map((json) => Todo.fromJson(json)).toList();
  }

  Future<Todo> addTodoItem(Todo todo) async {
    final json = await _rest.post('todos', data: todo);
    return Todo.fromJson(json);
  }

  Future<Todo> getTodoItem(String id) async {
    final json = await _rest.get('todos/$id');
    return Todo.fromJson(json);
  }
}
