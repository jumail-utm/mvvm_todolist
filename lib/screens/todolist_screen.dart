import 'package:flutter/material.dart';

import '../models/todo.dart';
import '../app/dependencies.dart';
import '../services/todolist/todolist_service.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final service = dependency<TodolistService>();
  List<Todo> _todoList;
  Future<List<Todo>> _todoListFuture;

  @override
  void initState() {
    super.initState();
    _todoListFuture = service.getTodolist();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder<List<Todo>>(
          future: _todoListFuture,
          builder: (context, snapshot) {
            if (!(snapshot.hasData)) {
              return CircularProgressIndicator();
            }

            _todoList = snapshot.data;

            return Scaffold(
              appBar: AppBar(
                title: Text('My Todo list'),
              ),
              body: Center(
                  child: ListView.separated(
                itemCount: _todoList.length,
                itemBuilder: (_, index) =>
                    ListTile(title: Text(_todoList[index].title)),
                separatorBuilder: (context, index) => Divider(
                  color: Colors.blueGrey,
                ),
              )),
              floatingActionButton: FloatingActionButton(
                onPressed: () => _onButtonPressed(),
                child: Icon(Icons.add),
              ),
            );
          }),
    );
  }

  void _onButtonPressed() async {
    final todo = await service
        .addTodoItem(Todo(title: 'Todo item ${_todoList.length + 1}'));
    _todoList.add(todo);
    setState(() {});
  }
}
