import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'second_screen.dart';

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: TodosScreen(),
  ));
}

class TodosScreen extends StatelessWidget {

  final todos = List<Todo>.generate(20, (i) => Todo(
      'Todo $i',
      'A description of what needs to be done for Todo $i',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Todos'),
        ),
        body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todos[index].title),
              // When a user taps the ListTile, navigate to the DetailScreen.
              // Notice that you're not only creating a DetailScreen, you're
              // also passing the current todo to it.
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(todo: todos[index]),
                  ),
                );
              },
            );
          },
        )

    );
  }
}