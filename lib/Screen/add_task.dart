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
            SizedBox(height:5,),
            Text(
              "Add Task",
              style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            SizedBox(height:5,),
            TextFormField(
              decoration:InputDecoration(
                labelText: 'Add new task',
              //  border:OutlineInputBorder(),
              ),
            ),
                SizedBox(height:5),
                MaterialButton(
                  color:Colors.teal,onPressed:(){
                },
                child: Text("Add",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
              ],
        ),
      ),
    );
  }
}
