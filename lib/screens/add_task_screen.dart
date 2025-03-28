import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/models/task_data.dart';
//import '../models/task.dart';

class AddTaskScreen extends StatelessWidget{
  const AddTaskScreen({super.key});


  @override
  Widget build(BuildContext context) {
    String? newTaskTile;

      return Container(
        color: const Color(0xff757575),

        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Text(
                  'Add task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTaskTile = newText;
                }
              ),
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.lightBlueAccent,
                ),
                  onPressed: (){
                    //final task = Task(newTaskTitle!);
                    Provider.of<TaskData>(context, listen: false).addTask(newTaskTile!);
                    Navigator.pop(context);
                  },
                child: const Text(
                    'Add',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}