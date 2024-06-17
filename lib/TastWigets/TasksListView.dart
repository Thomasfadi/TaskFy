import 'package:flutter/material.dart';

import 'Tasks_list_Tile.dart';

class ListView_widget extends StatelessWidget {
  const ListView_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        List_Tile(),
    ],);
  }
}

