import 'package:get_it/get_it.dart';
import '../services/todolist_service.dart';
import '../services/todolist_service_mock.dart';

GetIt dependency = GetIt.instance;

void init() {
  // Services
  dependency
      .registerLazySingleton<TodolistService>(() => TodolistServiceMock());
}
