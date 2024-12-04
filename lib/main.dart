import 'package:flutter/material.dart';
import 'package:taskmanagement/task_details.dart';
import 'package:taskmanagement/task_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskList(),
    );
  }
}
