import 'package:flutter/foundation.dart';
import 'package:todolist/models/tasks.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];
  int get taskCount {
    return _tasks.length;
  }
  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_tasks);
  }
  void addTask(String newTaskTitle){
    final newtask = Task(name: newTaskTitle);
    _tasks.add(newtask);
    notifyListeners();
  }
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}
