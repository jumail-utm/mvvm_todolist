import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _todoList = <String>['Hello World', 'How are you'];

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
          itemBuilder: (_, index) => ListTile(title: Text(_todoList[index])),
          separatorBuilder: (context, index) => Divider(
            color: Colors.blueGrey,
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(
              () => _todoList.add('Todo item ${_todoList.length + 1}')),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
