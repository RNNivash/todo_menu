import 'package:flutter/material.dart';
import 'package:demo/restaurant_menu.dart';

class TodoApp extends StatefulWidget {
  static const String id = 'todo_screen';

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  String displayText = "No Text Data";
  List<String> tasksList = [];

  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Todo List",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.brown,
        centerTitle: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          MaterialButton(
            child: Icon(
              Icons.fastfood,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, MenuApp.id);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: textController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter a task",
                    ),
                  ),
                ),
              ),
              MaterialButton(
                color: Colors.white,
                height: 40,
                minWidth: 30,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {
                  setState(() {
                    tasksList.add(textController.text);
                    textController.clear();
                  });
                },
                child: Icon(Icons.add),
              ),
            ],
          ),
          Flexible(
            child: ListView.builder(
              itemCount: tasksList.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          tasksList[index],
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          tasksList.removeAt(index);
                        });
                      },
                      child: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
