import '../../app/dependencies.dart';
import '../../models/todo.dart';
import '../viewmodel.dart';
import '../../services/todolist/todolist_service.dart';

class TodolistViewmodel extends Viewmodel {
  List<Todo> _todolist = [];
  TodolistViewmodel() {
    _loadTodolist();
  }

  TodolistService get _service => dependency();

  void _loadTodolist() async {
    turnBusy();
    await getTodolist();
    turnIdle();
  }

  Future<List<Todo>> getTodolist() async {
    _todolist = await _service.getTodolist();
    return _todolist;
  }

  void addTodo(Todo item) => update(() async {
        final _todo = await _service.addTodoItem(item);
        _todolist.add(_todo);
      });

  get todolist => _todolist;
}
