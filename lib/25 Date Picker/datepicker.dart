import 'package:flutter/material.dart';
import 'package:section_4/appbar_widget.dart';
//import 'package:intl/intl.dart';

class MyDatePicker extends StatelessWidget {
  const MyDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
    );
  }
}
