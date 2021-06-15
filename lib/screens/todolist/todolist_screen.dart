import 'package:flutter/material.dart';

class TodolistScreen extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Todo list'),
        ),
        body: Center(
            child: ListView.separated(
          itemCount: 3,
          itemBuilder: (_, index) =>
              ListTile(title: Text('Todo item ${index + 1}')),
          separatorBuilder: (context, index) => Divider(
            color: Colors.blueGrey,
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
