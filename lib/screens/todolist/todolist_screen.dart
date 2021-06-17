import 'package:flutter/material.dart';
import 'package:mvvm_todolist/models/todo.dart';
import 'package:mvvm_todolist/screens/todolist/todolist_viewmodel.dart';
import 'package:mvvm_todolist/screens/view.dart';

class TodolistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return View(
      viewmodel: TodolistViewmodel(),
      builder: (_, _viewmodel, __) {
        final TodolistViewmodel viewmodel = _viewmodel;
        final _todolist = viewmodel.todolist;

        return SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  title: Text('My Todo List'),
                ),
                body: ListView.separated(
                    itemCount: _todolist.length,
                    itemBuilder: (_, index) =>
                        ListTile(title: Text(_todolist[index].title)),
                    separatorBuilder: (_, __) =>
                        Divider(color: Colors.blueGrey)),
                floatingActionButton: FloatingActionButton(
                  onPressed: () => viewmodel.addTodo(
                      Todo(title: 'Todo item ${_todolist.length + 1}')),
                  child: Icon(Icons.add),
                )));
      },
    );
  }
}
