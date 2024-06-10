import 'package:flutter/material.dart';
import 'pages/TaskScreen.dart';

void main() {
  runApp(const ToDolist());
}
class ToDolist extends StatelessWidget {
  const ToDolist({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TaskScreen(),
    );
  }
}
