import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/Provider/todo_provider.dart';
import 'package:todo_list/Screen/add_task.dart';
import 'package:todo_list/Widget/todo_widget.dart';

class toscreen extends StatelessWidget {
  toscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 30),
          child: Column(children: [
            Row(
              children: [
                Icon(
                  Icons.playlist_add_check_sharp,
                  size: 40,
                  color: Colors.white,
                ),
                Text(
                  "ToDayDo",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                Consumer<todoprovider>(builder: (contxt, taskobj, child) {
                  final num = taskobj.datmodel?.total;
                  return Text("${num ?? 0} Tasks",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white));
                })
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: double.infinity,
               // height: 600,
                child: Consumer<todoprovider>(builder: (context, todject, child) {
                  //   final num = todject.datmodel?.total;
                  final todo = todject.datmodel?.task;
                  if (todo == null) {
                    todject.futudata();
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return ListView.separated(
                        itemBuilder: (context, index) {
                          final datalist = todo[index];
                          return todowidget(
                            task: datalist["todo"],
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(height: 5),
                        itemCount: todo.length);
                  }
                }),
              ),
            ),
          ]),
        ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_circle_outlined),onPressed: () {
        showModalBottomSheet(
            context: context, builder: (context) => addtask());
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
