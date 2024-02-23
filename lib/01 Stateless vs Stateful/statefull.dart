import 'package:flutter/material.dart';
import 'package:section_4/appbar_widget.dart';

class Stateful extends StatefulWidget {
  @override
  State<Stateful> createState() => _StatefulState();
}

//stateful ==> tampilannya dinamis, terjadi perubahan data pada screen (state/kondisi)
class _StatefulState extends State<Stateful> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar(),
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
                        setState(() {});
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
                        setState(() {});
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
