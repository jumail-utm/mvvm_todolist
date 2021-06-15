class Todo {
  dynamic id;
  String title;
  Todo({this.id, this.title});
  Todo.fromJson(json) : this(id: json['id'], title: json['title']);
  Map<String, dynamic> toJson() => {'id': id, 'title': title};
}
