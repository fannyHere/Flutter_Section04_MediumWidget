import 'package:flutter/material.dart';
import 'package:section_4/appbar_widget.dart';

class routes_photo_page extends StatelessWidget {
  const routes_photo_page({super.key});

  static const nameRoute = '/routes_photo_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Center(
        child: Text(
          "PHOTO",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
