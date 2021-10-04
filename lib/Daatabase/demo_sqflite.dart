import 'package:flutter/material.dart';
import 'package:new_practise/Daatabase/todo.dart';

import 'databaseHelper.dart';

class Sql_demo extends StatefulWidget {
  Sql_demo();

  @override
  _Sql_demoState createState() => _Sql_demoState();
}

class _Sql_demoState extends State<Sql_demo> {
  TextEditingController textController = new TextEditingController();

  List<Todo> taskList = [];

  @override
  void initState() {
    super.initState();

    DatabaseHelper.instance.queryAllRows().then((value) {
      setState(() {
        value.forEach((element) {
          taskList.add(Todo(id: element['id'], title: element["title"]));
        });
      });
    }).catchError((error) {
      print(error);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Enter a task"),
                    controller: textController,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _addToDb,
                )
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                child: taskList.isEmpty
                    ? Container()
                    : ListView.builder(itemBuilder: (ctx, index) {
                        if (index == taskList.length) {
                          return Text('');
                        }
                        return ListTile(
                          title: Text(taskList[index].title),
                          leading: Text(taskList[index].id.toString()),
                          trailing: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () => _deleteTask(taskList[index].id),
                          ),
                        );
                      }),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _deleteTask(int id) async {
    await DatabaseHelper.instance.delete(id);
    setState(() {
      taskList.removeWhere((element) => element.id == id);
    });
  }

  void _addToDb() async {
    String task = textController.text;
    var id = await DatabaseHelper.instance.insert(Todo(title: task, id: 1));
    setState(() {
      taskList.insert(0, Todo(id: id, title: task));
    });
  }
}
