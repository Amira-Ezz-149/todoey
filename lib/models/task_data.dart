
import 'package:flutter/foundation.dart';
// is equal to import 'package:flutter/material.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'buy milk',),
    Task(name: 'buy bread'),
    Task(name: 'buy eggs'),
  ];
  String _title;

  UnmodifiableListView <Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount{
    return _tasks.length;
  }

  void addTask(){
    final task = Task(name: _title);
    _tasks.add(task);
    notifyListeners();
  }
   set setTitle(String value)=> _title = value;

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}