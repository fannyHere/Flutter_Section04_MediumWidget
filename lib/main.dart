import 'package:flutter/material.dart';
import 'package:section_4/14%20mapping_list/mapping_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MappingList(),
    );
  }
}
