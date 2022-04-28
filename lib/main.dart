import 'package:filterlistview/select_item_in_listview.dart';
import 'package:flutter/material.dart';

import 'filter_listview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SelectItemInListView(),
    );
  }
}
