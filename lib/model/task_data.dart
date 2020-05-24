import 'package:flutter/cupertino.dart';
import 'package:todoey/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Build compiler'),
    Task(name: 'Play some console'),
    Task(name: 'Finish the book'),
  ];

  int get taskCount => tasks.length;
}
