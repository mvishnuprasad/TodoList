import 'package:flutter/material.dart';
import 'package:todolist/widgets/task_tile.dart';
import 'package:todolist/models/tasks.dart';

class TaskList extends StatefulWidget {

  final List<Task> task;
  TaskList(this.task);
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(widget.task[index].name, widget.task[index].isDone,
            (bool? checkBoxStateValue) {
          setState(() {
            widget.task[index].toggleDone();
          });
        });
      },
      itemCount: widget.task.length,
    );
  }
}
