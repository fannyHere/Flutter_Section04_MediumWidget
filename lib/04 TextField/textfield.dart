import 'package:flutter/material.dart';

class Txtfield extends StatefulWidget {
  const Txtfield({super.key});

  @override
  State<Txtfield> createState() => _TxtfieldState();
}

bool isHidden = true;
//controller itu buat nampung value dari masing-masing column
TextEditingController emailC = TextEditingController();
TextEditingController passC = TextEditingController();

class _TxtfieldState extends State<Txtfield> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("TextField"),
        centerTitle: true,
      ),

      //tipe 1 : untuk ngisi form di tengah
      // body: Center(
      //   child: Padding(
      //       padding: EdgeInsets.only(left: 20, right: 20),
      //       child: TextField(
      //         autocorrect: true,
      //       )),
      // ),

      //tipe 2 : untuk membuat form
      body: ListView(
          //ini make list view bukan column, supaya klo nanti ngisi formkepenuhan di bisa discroll
          padding: EdgeInsets.all(20),
          children: [
            // Container( //cek supaya bisa discroll (prove it)
            //   height: 400,
            //   color: Colors.amber,
            // ),
            TextField(
              controller: emailC,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              //ini nanti di keyboardnya otomatis ada @ sama _
              //textInputAction: TextInputAction.done, //supaya pas masukin text, di ujung kanan bawah keyboard ada done
              textInputAction: TextInputAction
                  .next, //supaya pas masukin text, lansgung ngisi kolom form berikutnya
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                label: Text("Email :"), //tipe 2 penulisan label text
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                //cara 1: masukin icon email, bisa di custom==> kudu diklik dulu baru muncul iconnya
                // prefix: Padding(
                //   //buat bikin icons email di dalamkotakform
                //   padding: const EdgeInsets.only(right: 20),
                //   child: Icon(Icons.email),
                //),
                //cara 2: masukin icon email tanpa custom ==> dari awal udah muncul iconnya
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
                controller: passC,
                autocorrect: false,
                //obscureText: true, //klonulis password ada bintang-bintangnya
                obscureText: isHidden,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  labelText: "password :", //tipe 1 penulisan label text
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 20), //buat naroin spasi di dalam kotak form
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  //cara 1: munculin ikon
                  // prefix: Padding(
                  //   //buat bikin icons email di dalamkotakform
                  //   padding: const EdgeInsets.only(right: 20),
                  //   child: Icon(Icons.vpn_key),
                  // ),
                  //cara 2:munculin ikon
                  prefixIcon: Icon(Icons.vpn_key),
                  //cara 1: munculin icon mata tapi gabisa diteken
                  suffixIcon: IconButton(
                    onPressed: () {
                      if (isHidden == true) {
                        //jika is hidden sama dengan true ....
                        isHidden = false;
                      } else {
                        isHidden = true;
                      }
                      setState(() {}); //supaya berubah UI nya
                    },
                    //cara 2: munculin icon mata bisa ditreken karena ada buttonnyahhhhh
                    icon: Icon(Icons.remove_red_eye),
                    // suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                )),

            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                print(
                    "LOGIN DENGAN : EMAIL (${emailC.text}) & PASS (${passC.text})");
              },
              child: Text("LOGIN"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.blue;
                    }
                    return Colors.amber;
                  }),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ))),
            ),
          ]),
    );
  }
}
