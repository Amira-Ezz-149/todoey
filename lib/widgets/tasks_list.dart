import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'task_tile.dart';
import 'package:todoey/models/task.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // solution we use here "Consumer<TaskData>" instead of "Consumer" only
    return Consumer<TaskData>(
      builder: (context , taskData, child){
        return ListView.builder(
          itemBuilder: (context, index) {
            Task task = taskData.tasks[index];
            return TaskTile(
               // we use 'Provider.of<TaskData>(context)'instead of 'taskData
                taskTitle:task.name,
                  isChecked: task.isDone,
                checkboxCallback: (bool checkboxState) {
             taskData.updateTask(task);
                },
            longPressCallBack: (){
                  taskData.deleteTask(task);
            },);
          },
          itemCount: taskData.taskCount,
        );
      },

    );
  }
}
