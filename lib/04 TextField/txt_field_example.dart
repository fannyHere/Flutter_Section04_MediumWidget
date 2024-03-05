import 'package:flutter/material.dart';
import 'package:section_4/appbar_widget.dart';

// ignore: must_be_immutable
class ex_txt extends StatefulWidget {
  ex_txt({super.key});

  @override
  State<ex_txt> createState() => _ex_txtState();
}

class _ex_txtState extends State<ex_txt> {
  final TextEditingController myController = TextEditingController();

  String hasil = "HASIL INPUT";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar(),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  //controller: TextEditingController(text: "INISIAL"),
                  controller: myController, //buat nampung text di dalam column
                  onChanged: (value) {
                    print(value); //diprint nilainya setiap penambahan satu kata
                    print("ONCHANGE");
                    //ini tuh runtime gitu klo kita masukin atau ngubah atau hapus text tuh nanti outputnya onchange

                    // setState(() {
                    //   //supaya pas diketik hasilnya runtime
                    //   hasil = value;
                    // });
                  },
                  onSubmitted: (value) {
                    print("onsubmittedchange"); //kokini gada ya??
                    print(value); //nanti outputnya itu yang terakhir diketik
                    setState(() {
                      //supaya pas diketik beres,langsung ada di hasil inputnya
                      hasil = value;
                    });
                  },
                  onEditingComplete: () {
                    print(
                        "on editing complete"); //proses menjalankan apa sebelum disubmit
                    print(
                        "=======================================================================");

                    print(myController.text);
                  },
                ),
                SizedBox(height: 40),
                Text(hasil),
              ],
            ),
          ),
        ));
  }
}

// I/flutter (14586): on editing complete
// I/flutter (14586): onsubmittedchange
// I/flutter (14586): rttfffgtddshb