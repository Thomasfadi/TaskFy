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
            color:Color.fromARGB(255, 24, 36, 58),
          ),
          ),
          TextField(
            cursorColor: Color.fromARGB(255, 0, 71, 129),
            autofocus: true,
          ),
         ElevatedButton.icon(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 24, 36, 58)),
    iconColor: MaterialStateProperty.all(Colors.white),
    iconSize: MaterialStateProperty.all(20),
  ),
  onPressed: () {
    // Your onPressed function here
  },
  icon: Icon(Icons.add,),
  label: Text("Add",style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold
  ),),
),
      ],
      ),
    ), 
    );
  }
}