import 'package:flutter/material.dart';
import 'note_list.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NoteKeeper",
      theme: ThemeData(
          primarySwatch: Colors.lime
      ),
      home: NoteList(),
    );
  }
}