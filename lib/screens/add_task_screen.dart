import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget{
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  color: Colors.lightBlueAccent
                ),
              ),
              const TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
              ),
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.lightBlueAccent,
                ),
                  onPressed: (){},
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