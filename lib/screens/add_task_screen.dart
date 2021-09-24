import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final listener;
  AddTaskScreen(this.listener);
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0)),
          ),
          child: ListView(
            children: [
              Text(
                'Add Task',
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
                textAlign: TextAlign.center,
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  listener.setTitle = newText;
              //    print(newTaskTitle);
                },
              ),
              SizedBox(height: 10.0,),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent),
                onPressed: () {
                listener.addTask();
                 Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
