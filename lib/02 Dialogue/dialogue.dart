import 'package:flutter/material.dart';

class Dialogue extends StatelessWidget {
  const Dialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dialogue"),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
            //tes 1:
            // onPressed: () {
            //   showDialog(
            //     context: context,
            //     builder: (context) => Dialog(
            //       //supaya text nya punya material
            //       child: Text("halooo"),
            //     ),
            //   );
            // },
            //tes 2:
            // onPressed: () {
            //   showDialog(
            //     context: context,
            //     builder: (context) => Text("halooo"),
            //   );
            // },

            //tes 3: macam-macam dialogue (1. alertDialogue)
            onPressed: () {
              showAboutDialog(context: context, children: [
                Text("data"),
              ]);
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  shape: RoundedRectangleBorder(
                    //buat ngasih bentukan kotak alertnya
                    //borderRadius: BorderRadius.only(topRight: Radius.Circular(15)), //ini cuma bagian tertentu misalkiri pojoknya
                    borderRadius: BorderRadius.circular(
                        50), //iningasih kecekungan kotaknya
                  ),
                  //udah ada padding, border radisu dll udah ada
                  title: Text("bismillah"),
                  content: Text("gotta bigsallary"),
                  actions: [
                    ElevatedButton(onPressed: () {}, child: Text("OKAY")),
                    ElevatedButton(onPressed: () {}, child: Text("CANCEL")),
                  ], //ini desc dialogue
                ),
              );
            },

            //tes 4 : macam dialogue make show dialogue cuma parameternya terbatas
            // onPressed: () {
            //   showAboutDialog(context: context, children: [
            //     Text("data"),
            //   ]);
            // },

            //tes 5: macam-macam dialogue (2. dialogue biasa dicustom) => gapunya parameter text dan title
            // onPressed: () {
            //   showDialog(
            //     context: context,
            //     builder: (context) => Dialog(
            //       //belum ada desain, padding dll (masih banyak PR)
            //       child: Column(
            //           mainAxisSize: MainAxisSize
            //               .min, //supaya ngikutin tes yang masuk kotaknya
            //           children: [
            //             Text("bismillah"),
            //             Text("gotta bigsallary"), //ini desc dialogue
            //           ]),
            //     ),
            //   );
            // },

            child: Text("Dialogue Button"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.amberAccent;
                }
                return Colors.blue;
              }),
              //  ((states) => null)),
            ),
          ),
        ));
  }
}
