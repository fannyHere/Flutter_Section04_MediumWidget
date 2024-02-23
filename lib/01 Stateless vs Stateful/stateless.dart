import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Stateless extends StatelessWidget {
  int counter = 0;
//tidak ada perubahan data/kondisi pada screen

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text("Stateless"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Container(
                    child: Text(
              //"0" (jangan nulis hardcode)
              //counter.toString(), //konversi int ke string
              "$counter", //atau pake string interpolation
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
              ),
            ))),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        //counter = counter -1;
                        counter--;
                        print(counter);
                      },

                      //cara warnain button 1:
                      //style:
                      //ElevatedButton.styleFrom(backgroundColor: Colors.amber),

                      //cara warnain button 2:
                      //style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) => null),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            // Warna saat tombol ditekan
                            return Colors
                                .red; // Ganti dengan warna yang Anda inginkan
                          }
                          // Warna default tombol
                          return Colors
                              .deepPurpleAccent; // Ganti dengan warna default yang Anda inginkan
                        }),
                      ),
                      child: Text("-",
                          style: TextStyle(color: Colors.white, fontSize: 30))),
                ),
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        counter = counter + 1;
                        //counter++;
                        print(counter);
                      },
                      //cara warnain button 1:
                      //style:
                      //ElevatedButton.styleFrom(backgroundColor: Colors.amber),

                      //cara warnain button 2:
                      //style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) => null),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            // Warna saat tombol ditekan
                            return Colors
                                .red; // Ganti dengan warna yang Anda inginkan
                          }
                          // Warna default tombol
                          return Colors
                              .deepPurpleAccent; // Ganti dengan warna default yang Anda inginkan
                        }),
                      ),
                      child: Text(
                        "+",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      )),
                ),
              ],
            ),
          ],
        ));
  }
}
