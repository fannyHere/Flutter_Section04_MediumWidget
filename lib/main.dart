import 'package:flutter/material.dart';
import 'package:section_4/01%20Stateless%20vs%20Stateful/stateless.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stateless(),
    );
  }
}
