import 'package:flutter/material.dart';
import 'package:section_4/appbar_widget.dart';

class MyExpended extends StatelessWidget {
  const MyExpended({super.key});

//flex itu adalah widget di dalam flexible yang membagi kotak ke dalam perbandingan layar
  //misal ada 3 kotak dengan flex: 1, artinya 1:1:1 dengan ukuran sama besar
  //konsep pecahan 1/1 dll
  //berpengaruh pada rotate di handphone

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Row(
        children: [
          Flexible(
            //fit: FlexFit.tight,
            flex: 1,
            child: Container(
              child: Text("Text 1"),
              height: 100,
              color: Colors.amber,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              child: Text("Text 1"),
              height: 100,
              color: Colors.brown,
            ),
          ),
          Flexible(
            //fit: FlexFit.tight,
            flex: 1,
            child: Container(
              child: Text("Text 1"),
              // width: 100, //klo make flexfit.tight itu ga ngaruh widthnya alias full mentok terus
              height: 100,
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),
    );
  }
}
