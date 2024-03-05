import 'package:flutter/material.dart';
import 'package:section_4/16%20Routes/routes_gallery_page.dart';
//import 'package:section_4/16%20Routes/routes_gallery_page.dart';

class routes_homepage extends StatelessWidget {
  const routes_homepage({super.key});

  static const nameRoute =
      '/routes_homepage'; //supaya ga lupa naro routess pushnamed dibikin otomatis si

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1 yolah"),
        backgroundColor: Colors.brown,
        leading: Container(), //supaya ngga ada btn backnya
      ),
      body: Center(
        child: Text(
          "MY HOME PAGE",
          style: TextStyle(fontSize: 40),
        ),
      ),

      //INI KLO PAKE NAVIGATION ==> coock untuk halaman pendek/seidkit
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      //       return routes_gallery_page();
      //     }));
      //   },

      //INI KLOPAKE ROUTES ==> untuk halaman banyak dan ruwed
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //cara manual
          //Navigator.of(context).pushNamed('/gallery');
          //cara udah didaftarin route nya:
          Navigator.of(context).pushNamed(routes_gallery_page.nameRoute);
        },
        child: Icon(Icons.arrow_right_alt),
      ),
    );
  }
}
