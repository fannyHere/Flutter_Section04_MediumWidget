import 'package:flutter/material.dart';
import 'package:section_4/04%20TextField/txt_field_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ex_txt(),
    );
  }
}
