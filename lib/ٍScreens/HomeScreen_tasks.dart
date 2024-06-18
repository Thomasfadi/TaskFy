
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../TastWigets/TasksListView.dart';
import 'Add_task_screen.dart';


class TasksHomeScreen extends StatelessWidget {
  const TasksHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context)=>SingleChildScrollView(child: Container(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: AddTask())));
        },// this is the function of the poping the screen  of add Task Screen 
        backgroundColor: Color.fromARGB(255, 24, 36, 58),
        child: Icon(Icons.add,color: const Color.fromARGB(255, 255, 255, 255),
        ),
),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        
        padding: const EdgeInsets.only( // the appication 
          top: 50,
          bottom: 50,
          left: 10,
          right: 10,
        ),
        // ignore: prefer_const_constructors
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: prefer_const_constructors
            Row(
              children: const [
                Text(
                  "Taskfy",
                  style: TextStyle(
                    color: Color.fromARGB(255, 24, 36, 58),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),//the app name
              ],
            ),
            Row(children: [
              
                Text("1 task left",
              style: TextStyle(
                    color: Color.fromARGB(255, 169, 0, 0),
                    fontSize: 18,
                  ),),
            ],),
          Expanded(
            //this "expanded widget" to make the following container take all the possible space 
            child: Container( // the main "container" of the tasks
              decoration: BoxDecoration(
              color: Color.fromARGB(255, 239, 239, 239),
              borderRadius: BorderRadius.all(Radius.circular(30)), //this is the resposble of the borderreduce value 30 px
              ),
              child:ListView_widget()
            ),
          )
          ],
        ),
      ),
    );
  }
}
