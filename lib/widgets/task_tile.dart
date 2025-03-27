import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget{

  const TaskTile(this.taskTitle, this.isChecked,this.checkboxCallback, {super.key});
  final bool isChecked;
  final String taskTitle;
  final ValueChanged<bool?> checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'text',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged:  checkboxCallback,
      )

    );
  }
}





/*
class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox(this.checkBookState, this.toggleCheckboxState,
      {super.key});
  final bool checkBookState;
  final ValueChanged<bool?> toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBookState,
      onChanged: toggleCheckboxState,
    );
  }
}
*/