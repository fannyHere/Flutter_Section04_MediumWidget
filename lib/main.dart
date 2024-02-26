import 'package:flutter/material.dart';
import 'package:section_4/08%20Bottom%20sheet/bottom_sheet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bottom_sheet(),
    );
  }
}
