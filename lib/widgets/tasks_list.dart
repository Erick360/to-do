import 'package:flutter/material.dart';
//import '../models/task.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:to_do/models/task_data.dart';

class TaskList extends StatelessWidget{
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemBuilder: (context, index){
            final task = taskData.tasks[index];
            return TaskTile(
             taskData.tasks[index].name,
              taskData.tasks[index].isDone,
                  (checkboxState){
                    taskData.updateTask(taskData.tasks[index]);
              },
                (){
                    taskData.deleteTask(task);
                }
            );
          }, itemCount: taskData.taskCount,
        );
      },
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
