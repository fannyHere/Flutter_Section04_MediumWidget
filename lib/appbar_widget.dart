import 'package:flutter/material.dart';

AppBar appbar() {
  return AppBar(
    backgroundColor: Colors.blue,
    title: Text("Ini Fanny"),
    centerTitle: true,
    actions: [
      Icon(Icons.more_vert_rounded),
    ],
  );
}
