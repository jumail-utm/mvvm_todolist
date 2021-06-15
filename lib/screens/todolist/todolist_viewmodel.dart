import '../../app/dependencies.dart';
import '../viewmodel.dart';
import '../../services/todolist_service.dart';

class TodolistViewmodel extends Viewmodel {
  TodolistService get _service => dependency();
}
