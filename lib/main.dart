import 'package:flutter/material.dart';
import 'pages/TaskScreen.dart';
import 'package:provider/provider.dart';
import 'models/task_data.dart';

void main() {
  runApp(const ToDolist());
}

class ToDolist extends StatelessWidget {
  const ToDolist({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: const MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
