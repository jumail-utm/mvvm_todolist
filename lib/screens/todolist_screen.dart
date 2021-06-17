import 'package:flutter/material.dart';

import '../models/todo.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _todoList = <Todo>[
    Todo(title: 'Hello World', id: 1),
    Todo(title: 'How are you there', id: 2)
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          onPressed: () => setState(() => _todoList.add(Todo(
              title: 'Todo item ${_todoList.length + 1}',
              id: _todoList.length + 1))),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
