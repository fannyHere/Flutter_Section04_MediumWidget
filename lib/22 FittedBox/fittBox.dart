import 'package:flutter/material.dart';
import 'package:section_4/appbar_widget.dart';

class MyFitBox extends StatelessWidget {
  const MyFitBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar(),
        body: Center(
          child: Container(
            color: Colors.amber,
            width: 300,
            height: 110,
            child: FittedBox(
                alignment: Alignment.topRight,
                // fit: BoxFit.cover,
                child: Image.network("http://picsum.photos/300/300")),
            // child: Text(
            //   //setiappenambahan text nanti menyesuaikan ukuran box nya
            //   "HALOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO",
            //   style: TextStyle(fontSize: 25),
            // ),
          ),
        ));
  }
}
