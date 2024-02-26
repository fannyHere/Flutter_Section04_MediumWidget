import 'package:flutter/material.dart';
import 'package:section_4/08%20Bottom%20sheet/bottom_sheet.dart';
import 'package:section_4/09%20Drawer/drawer.dart';

class nav extends StatefulWidget {
  const nav({super.key});

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("navigation"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Row(children: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                //BUAT PINDAH KE PAGE SELANJUTNYA >>> NEXTTT
                MaterialPageRoute(
                  builder: (context) => drawerrr(),
                ),
              );
            }, // Hapus titik koma di sini
            child: Text("next page"),
          ),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                //BUAT PINDAH KE PAGE SEBELUMNYA >>> PREVIOUS
                MaterialPageRoute(
                  builder: (context) => bottom_sheet(),
                ),
              );
            }, // Hapus titik koma di sini
            child: Text("prev page"),
          ),
        ),
      ]),
    );
  }
}
