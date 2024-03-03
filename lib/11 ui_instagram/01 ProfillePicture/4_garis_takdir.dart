import 'package:flutter/material.dart';

class icon_IG extends StatelessWidget {
  const icon_IG(this.Ikon, this.active);

  final bool active;
  final Ikon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: active == true ? Colors.black : Colors.white,
          //conditional (ternary) operator yang digunakan dalam Flutter atau Dart.
          //Ini adalah cara untuk menentukan nilai suatu ekspresi berdasarkan kondisi tertentu. Dalam kasus ini, jika nilai variabel active adalah true, maka warna yang dipilih adalah Colors.black, jika tidak, warna yang dipilih adalah Colors.white.
          width: 1,
        ))),
        child: Icon(Ikon),
      ),
    );
  }
}
