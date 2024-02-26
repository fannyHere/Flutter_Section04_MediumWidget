import 'package:flutter/material.dart';

class BtnNavBar extends StatefulWidget {
  const BtnNavBar({super.key});

  @override
  State<BtnNavBar> createState() => _BtnNavBarState();
}

class _BtnNavBarState extends State<BtnNavBar> {
  late int index;
//supaya set state nya berubah state / UI nya berubah

  List showWidget = [
    Center(
      child: Text("HOME"),
    ),
    Center(
      child: Text("PROFILE"),
    ),
    Center(
      child: Text("CART"),
    ),
  ];

  @override
  void initState() {
    index = 0; //tampilan awal-awal index dari 0
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottom Navigation Bar"),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      // body: Center(
      //   child: Text("TEST"),
      // ),
      //supaya berubah-ubah pasdiklik indexnya
      body: showWidget[index],

      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amber,
          //currentIndex: 0, //naro apa yg kebukapertama kali
          currentIndex: index, //pas ngeklik itu ada diindexnya
          selectedItemColor:
              Colors.red, //pasdi klik warnanya berubah/nandain lagi di klik
          unselectedItemColor:
              Colors.grey[200], //pas ga di klik warnanya berubah
          onTap: (value) {
            //kudu make setstate ==> make stateful
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "cart",
            )
          ]),
    );
  }
}
