import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});
  
  get color => null;

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: const EdgeInsets.only( // the appication 
          top: 50,
          bottom: 50,
          left: 20,
          right: 20,
        ),
    child: SafeArea(
      child: Column(
        children: [
          Text("Add a Task",
          style: TextStyle(
            
            fontSize: 25,
            fontWeight:FontWeight.w900 ,
            color: Color.fromARGB(232, 19, 37, 52),
          ),
          ),
          TextField(
            cursorColor: Color.fromARGB(255, 0, 71, 129),
            cursorErrorColor: Colors.red[900],
          ),
        ],
      ),
    ), 
    );
  }
}