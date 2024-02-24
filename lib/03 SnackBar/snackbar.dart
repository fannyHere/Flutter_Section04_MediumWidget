import 'package:flutter/material.dart';

class snackbar extends StatelessWidget {
  const snackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("snackbar"),
          centerTitle: true,
          backgroundColor: Colors.cyanAccent,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              //pas mencet tombol snackbar keluar
              ScaffoldMessenger.of(context).showSnackBar(
                //buat munculin widget snackbar
                SnackBar(
                  content: Text('update berhasil!'),
                  duration:
                      Duration(seconds: 10), // Durasi Snackbar ditampilkan
                  margin: EdgeInsets.all(20),
                  behavior: SnackBarBehavior.floating, //tadidefaultnya fixed
                  shape: RoundedRectangleBorder(
                      //supaya seginya membulat
                      borderRadius: BorderRadius.circular(50)),
                  action: SnackBarAction(
                    label: 'CANCEL', // Label untuk tombol aksi
                    onPressed: () {
                      print("Tidak jadi dihapus!");
                      // Asi cancel ditekan
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    },
                    backgroundColor: Colors.blueAccent,
                  ),
                  backgroundColor: Colors.red,
                ),
              );
            },
            // child: Text('Tampilkan Snackbar'),

            child: Text("snackbar test"),
            style: ButtonStyle(
              //buat styling buttonnya
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.amber;
                }
                return Colors.red;
              }),
            ),
          ),
        ));
  }
}
