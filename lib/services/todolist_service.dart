import '../models/todo.dart';

abstract class TodolistService {
  Future<List<Todo>> getTodolist();
  Future<Todo> getTodoItem(String id);
  Future<Todo> addTodoItem(Todo todo);
}
