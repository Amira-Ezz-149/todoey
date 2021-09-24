import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;

  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallBack;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
       '$taskTitle',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor:  Colors.lightBlueAccent,
        value: isChecked,
        onChanged:checkboxCallback,
      )
    );
  }
}

//
// TaskCheckbox(
// checkboxState: isChecked,
// toggleCheckboxState: (checkboxState) {
// setState(() {
// isChecked = checkboxState;
// });
// },
// ),

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckboxState;

  const TaskCheckbox({this.checkboxState, this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: checkboxState,
        activeColor: Colors.lightBlueAccent,
        onChanged: toggleCheckboxState);
  }
}
