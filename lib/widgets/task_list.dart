import 'package:flutter/material.dart';
import 'package:todolist/widgets/task_tile.dart';
import 'package:todolist/models/tasks.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskData.task[index].name, taskData.task[index].isDone,
                (bool? checkBoxStateValue) {
              // setState(() {
              //   Provider.of<TaskData>(context).task[index].toggleDone();
              // });
            });
          },
          itemCount: taskData.task.length,
        );
      },
    );
  }
}
