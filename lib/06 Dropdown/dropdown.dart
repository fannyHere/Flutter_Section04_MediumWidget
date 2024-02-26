import 'package:flutter/material.dart';

//sebenernyaaa klo mau make dropdown itu bisa make package
//pubdev==> dropdown search
//cek sini: https://pub.dev/packages?q=dropdown+search

class dropdown extends StatefulWidget {
  dropdown({super.key});

  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  final List data = [
    //bentuk data versi 1:
    // "data 1",
    // "data 2",
    // "data 3",
    // "data 4",
    // "data 5",

    //bentuk data versi 2:
    {
      "judul": "Pilihan ke- 1",
      "data": 1,
    },
    {
      "judul": "Pilihan ke- 2",
      "data": 2,
    },
    {
      "judul": "Pilihan ke- 3",
      "data": 3,
    },
    {
      "judul": "Pilihan ke- 4",
      "data": 4,
    },
    {
      "judul": "Pilihan ke- 5",
      "data": 5,
    },
  ];

  late int dataAwal;

  void initState() {
    dataAwal = data[0]["data"];
    super
        .initState(); //ambillist pertama (0),terus ambil data //membuat data awal jadi diposisiawal = data
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dropdowns"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: DropdownButton<int>(
            value: dataAwal, //membuat data awal jadi diposisiawal
            items: data
                .map(
                  (e) => DropdownMenuItem(
                    //child: Text("TAMPILAN - $e"), //ini klobentuk data DD nya kaya versi 1
                    child: Text(
                        "${e["judul"]}"), //ini klobentuk data DD nya kaya versi 2
                    // value: e //bentuk value versi 1
                    //     .toString(), //setiap items itu ada value dn akan di print
                    value: e["data"] as int, //bentuk value versi 2
                  ),
                )
                .toList(),
            onChanged: (value) {
              //print(value); //prnt value di sini
              setState(() {
                dataAwal =
                    value!; //supaya pasdiklik data nya ditampung di depan
                //makamemakai setstate ()
              });
            },
          ),
        ),
      ),
    );
  }
}
