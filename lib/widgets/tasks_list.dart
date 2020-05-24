import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: Provider.of<TaskData>(context).tasks[index].name,
            isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
            checkBoxCallback: (checkBoxState) {
//              setState(() {
//                Provider.of<TaskData>(context).tasks[index].toggleDone();
//              });
            });
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
