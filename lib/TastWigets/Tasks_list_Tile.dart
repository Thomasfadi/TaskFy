import 'package:flutter/material.dart';

class List_Tile extends StatelessWidget {
  const List_Tile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("data"),
      trailing: Checkbox(
        value: false,
       onChanged:null ,),
    );
  }
}
