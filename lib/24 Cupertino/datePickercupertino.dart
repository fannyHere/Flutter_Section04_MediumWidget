import 'dart:io'; //untuk adaptif terhadap IOS atau android platform

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:section_4/appbar_widget.dart';

class MyCupertinoDatePicker extends StatelessWidget {
  const MyCupertinoDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Platform.isAndroid
                ? showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2030),
                  )
                : showCupertinoModalPopup(
                    context: context,
                    builder: (context) {
                      return Container(
                        color: Colors.white,
                        height: MediaQuery.of(context).size.height * 0.4,
                        child: CupertinoDatePicker(
                          onDateTimeChanged: (value) {
                            print(value);
                          },
                          initialDateTime: DateTime.now(),
                        ),
                      );
                    },
                  );
          },
          child: Text("Date Picker"),
        ),
      ),
    );
  }
}
