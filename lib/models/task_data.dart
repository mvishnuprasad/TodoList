import 'package:flutter/foundation.dart';
import 'package:todolist/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> task = [];
  int get taskCount {
    return task.length;
  }
}
