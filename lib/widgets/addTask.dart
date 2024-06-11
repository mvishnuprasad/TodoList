

import 'package:flutter/material.dart';
import 'package:todolist/models/tasks.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  String newTaskTitle = "";
  AddTaskScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              textAlign: TextAlign.center,
              "Add Task",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your task',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlueAccent),
                ),
                onPressed: () {
                  Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                child: const Text('Add Task'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
