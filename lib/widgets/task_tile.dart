import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkBoxCallback;
  final void Function() longPressCallBack;
   TaskTile(this.taskTitle, this.isChecked, this.checkBoxCallback, this.longPressCallBack, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: isChecked,
          onChanged: checkBoxCallback,
        ));
  }
}
