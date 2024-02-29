import 'package:flutter/material.dart';
import 'package:section_4/11%20ui_instagram/kul_ver_ui.instagram.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Kul_version(),
    );
  }
}
