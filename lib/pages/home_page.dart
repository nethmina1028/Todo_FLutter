import 'package:flutter/material.dart';
import 'package:todo/utils/todo_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   List toDoList = [
    ['Learn Flutter', false],
    ['Learn Dart', false],
    ['Learn Firebase', false],
    ['Build Apps', false],
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(
        title:const Text(
          'Simple Todo'
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,

      ), 

      body: ListView.builder(
        itemCount:toDoList.length,
        itemBuilder:(BuildContext context,index){

        return TodoList(
          taskName: toDoList[index][0],
        );
      }),
    );
  }
}