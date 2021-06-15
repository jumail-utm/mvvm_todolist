import 'package:get_it/get_it.dart';
import '../services/rest.dart';
import '../services/todolist/todolist_service.dart';
// import '../services/todolist/todolist_service_mock.dart';
import '../services/todolist/todolist_service_rest.dart';

GetIt dependency = GetIt.instance;

void init() {
  // Services
  dependency.registerLazySingleton<RestService>(() => RestService(
      baseUrl:
          'http://192.168.0.3:5001/jumail-backend-firebase-rest/us-central1/api'));
  // () => RestService(baseUrl: 'http://192.168.0.3:3000'));
  dependency
      .registerLazySingleton<TodolistService>(() => TodolistServiceRest());
  // .registerLazySingleton<TodolistService>(() => TodolistServiceMock());
}
