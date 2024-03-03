import 'package:flutter/material.dart';
import 'package:section_4/appbar_widget.dart';

class text_widget extends StatelessWidget {
  const text_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Text(
        "agshsg fsasfasfhgasfas agsghafshgafshgafshfas ahgafshgfashgafsshfas ahfshgasfhgasfhafsahgs ahgshagshasgahs hashasghagsahs hagshashashas hagshagshags hgafshgafshgafsafshgasasafsahgsa hafshafshgafsgafs",
        maxLines:
            2, //klo textnya lebih dari 2 maka dia akan menetapkan yang ditampilkan hanya 2
        overflow: TextOverflow
            .ellipsis, //overflow ini menunjukkan klo textnya lebih dari 2 kan ga ditampilin,maka nanti make titik3
        textAlign: TextAlign.end, //ngeratain text
        style: TextStyle(
          backgroundColor: Colors.amber,
          color: Colors.blueAccent, //warnain text
          fontSize: 30,
          fontWeight: FontWeight.bold,
          letterSpacing: 10, //jarak antara huruf
          fontFamily: "Anta", //make font.google.com
          decorationStyle:
              TextDecorationStyle.wavy, //si underlinenyajadi bergelombang
          decoration: TextDecoration.underline,
          decorationColor: Colors.indigo, //warna underlinenya
          decorationThickness: 10, //ketebalan underlinenya
        ),
      ),
    );
  }
}
