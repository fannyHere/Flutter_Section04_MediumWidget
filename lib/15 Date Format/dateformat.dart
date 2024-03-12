import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:section_4/appbar_widget.dart';
//import 'package:intl/intl.dart';

class MyDateFormat extends StatelessWidget {
  const MyDateFormat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Center(
        child: Text(
//          DateTime(2020).toString(),
          //DateFormat.d().format(DateTime.now()), //menunjukkan tanggal skrg
          //  DateFormat.EEEE().format(DateTime.now()), //menunjukkan hari skrg WEEKDAY
          // DateFormat.E().format(DateTime.now()), //outputnya Tue, waktu skrg
          // DateFormat.yMMMMEEEEd().format(DateTime.now()), //outputnya Tuesday, March 12, 2024
          // DateFormat.yMMMMEEEEd().add_jm().format(
          //     DateTime.now()), //outputnya Tuesday, March 12, 2024 10:53 AM
          DateFormat.yMMMMEEEEd().add_Hms().format(DateTime.now()),
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
