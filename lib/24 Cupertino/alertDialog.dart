import 'dart:io'; //untuk adaptif terhadap IOS atau android platform

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:section_4/appbar_widget.dart';

class MyCupertinoAlert extends StatelessWidget {
  const MyCupertinoAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Platform.isAndroid
                      ? AlertDialog(
                          title: Text("Delete Data"),
                          content: Text("Do you want deleted this data?"),
                          actions: [
                            TextButton(onPressed: () {}, child: Text("Yes")),
                            TextButton(onPressed: () {}, child: Text("No")),
                          ],
                        )
                      : CupertinoAlertDialog(
                          title: Text("Delete Data"),
                          content: Text("Do you want deleted this data?"),
                          actions: [
                            TextButton(onPressed: () {}, child: Text("Yes")),
                            TextButton(onPressed: () {}, child: Text("No")),
                          ],
                        );
                });
          },
          child: Text("Alert Dialog"),
        ),
      ),
    );
  }
}
