import 'package:flutter/material.dart';

class addtask extends StatelessWidget {
  addtask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Add Task",
              style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            TextFormField(
              decoration:InputDecoration(
                labelText: 'Add new task',
                border:OutlineInputBorder(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
