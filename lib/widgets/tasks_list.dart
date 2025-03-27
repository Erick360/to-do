import 'package:flutter/material.dart';
import '../models/task.dart';
import 'task_tile.dart';

class TaskList extends StatefulWidget{
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  List<Task> tasks = [
    Task('Buy apples'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index){
          return TaskTile(
              tasks[index].name,
              tasks[index].isDone,
              (checkboxState){
                setState(() {
                  tasks[index].toggleDone();
                });
              },
          );
        }, itemCount: tasks.length,
    );

      /*
      ListView(
      children:  <Widget>[
        TaskTile(tasks[0].isDone, tasks[0].name),
        const TaskTile(),
        const TaskTile(),
      ],
    );
    */
  }
}
