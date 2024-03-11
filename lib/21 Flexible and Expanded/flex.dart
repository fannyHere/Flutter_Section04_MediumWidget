import 'package:flutter/material.dart';
import 'package:section_4/appbar_widget.dart';

class MyFlex extends StatelessWidget {
  const MyFlex({super.key});
  //flex itu adalah widget di dalam flexible yang membagi kotak ke dalam perbandingan layar
  //misal ada 3 kotak dengan flex: 1, artinya 1:1:1 dengan ukuran sama besar
  //konsep pecahan 1/1 dll
  //berpengaruh pada rotate di handphone
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              //height: 100,
              color: Colors.amber,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              //height: 100,
              color: Colors.brown,
            ),
          ),
          Flexible(
            //gaush make containerklo kasusnya kita ngga tahu seberapa tinggi dari height yg mau kita buat, contohnya dalam membuat listview
            flex: 10,
            //expanded adalah sebua widget yang mana sama kaya flexible cuma udah termasuk sama flexfit.tight sekaligus
            child: ListView(
              children: [
                Text("yayayay"),
                Text("yayayay"),
                Text("yayayay"),
                Text("yayayay"),
                Text("yayayay"),
                Text("yayayay"),
                Text("yayayay"),
                Text("yayayay"),
                Text("yayayay"),
                Text("yayayay"),
                Text("yayayay"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
