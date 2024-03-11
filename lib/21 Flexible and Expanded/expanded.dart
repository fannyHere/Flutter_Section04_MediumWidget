import 'package:flutter/material.dart';
import 'package:section_4/appbar_widget.dart';

class Myflexible extends StatelessWidget {
  const Myflexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Row(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              child: Text("Text 1"),
              height: 100,
              color: Colors.amber,
            ),
          ),
          Container(
            child: Text("Text 1"),
            height: 100,
            color: Colors.brown,
          ),
          Expanded(
            //expanded adalah sebua widget yang mana sama kaya flexible cuma udah termasuk sama flexfit.tight sekaligus
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
