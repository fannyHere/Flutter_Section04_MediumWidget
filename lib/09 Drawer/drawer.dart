import 'package:flutter/material.dart';
import 'package:section_4/10%20Navigation/navigation.dart';

class drawerrr extends StatelessWidget {
  const drawerrr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
        centerTitle: true,
        backgroundColor: Colors.limeAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(
              //BUAT PINDAH KE PAGE SEBELUMNYA >>> PREVIOUS
              MaterialPageRoute(
                builder: (context) => nav(),
              ),
            );
          }, // Hapus titik koma di sini
          child: Text("prev page"),
        ),
      ),
      drawer: Drawer(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(20),
          width: double.infinity,
          height: 150,
          color: Colors.amberAccent,
          child: Text("DASHBOARD"),
        ),
        // Container(
        //   width: 250,
        //   height: 50,
        //   color: Colors.blueAccent,
        // )
        Expanded(
            child: ListView(padding: EdgeInsets.only(top: 10), children: [
          ListTile(
            onTap: () {
              print("PINDAH KE PAGE HOME");
            },
            leading: Icon(Icons.home),
            title: Text("Home"),
            //trailing: Icon(Icons.arrow_forward_ios_rounded),
            //trailing: Icon(Icons.home),
          ),
          ListTile(
            onTap: () {
              print("PINDAH KE PAGE PRODUCT");
            },
            leading: Icon(Icons.shopping_cart),
            title: Text("Product"),
            //trailing: Icon(Icons.arrow_forward_ios_rounded),
            //trailing: Icon(Icons.home),
          ),
          ListTile(
            onTap: () {
              print("PINDAH KE PAGE HOME");
            },
            leading: Icon(Icons.home),
            title: Text("Home"),
            //trailing: Icon(Icons.arrow_forward_ios_rounded),
            //trailing: Icon(Icons.home),
          ),
          ListTile(
            onTap: () {
              print("PINDAH KE PAGE PRODUCT");
            },
            leading: Icon(Icons.shopping_cart),
            title: Text("Product"),
            //trailing: Icon(Icons.arrow_forward_ios_rounded),
            //trailing: Icon(Icons.home),
          ),
          ListTile(
            onTap: () {
              print("PINDAH KE PAGE HOME");
            },
            leading: Icon(Icons.home),
            title: Text("Home"),
            //trailing: Icon(Icons.arrow_forward_ios_rounded),
            //trailing: Icon(Icons.home),
          ),
          ListTile(
            onTap: () {
              print("PINDAH KE PAGE PRODUCT");
            },
            leading: Icon(Icons.shopping_cart),
            title: Text("Product"),
            //trailing: Icon(Icons.arrow_forward_ios_rounded),
            //trailing: Icon(Icons.home),
          ),
          ListTile(
            onTap: () {
              print("PINDAH KE PAGE HOME");
            },
            leading: Icon(Icons.home),
            title: Text("Home"),
            //trailing: Icon(Icons.arrow_forward_ios_rounded),
            //trailing: Icon(Icons.home),
          ),
          ListTile(
            onTap: () {
              print("PINDAH KE PAGE PRODUCT");
            },
            leading: Icon(Icons.shopping_cart),
            title: Text("Product"),
            //trailing: Icon(Icons.arrow_forward_ios_rounded),
            //trailing: Icon(Icons.home),
          ),
          ListTile(
            onTap: () {
              print("PINDAH KE PAGE HOME");
            },
            leading: Icon(Icons.home),
            title: Text("Home"),
            //trailing: Icon(Icons.arrow_forward_ios_rounded),
            //trailing: Icon(Icons.home),
          ),
          ListTile(
            onTap: () {
              print("PINDAH KE PAGE PRODUCT");
            },
            leading: Icon(Icons.shopping_cart),
            title: Text("Product"),
            //trailing: Icon(Icons.arrow_forward_ios_rounded),
            //trailing: Icon(Icons.home),
          ),
          ListTile(
            onTap: () {
              print("PINDAH KE PAGE HOME");
            },
            leading: Icon(Icons.home),
            title: Text("Home"),
            //trailing: Icon(Icons.arrow_forward_ios_rounded),
            //trailing: Icon(Icons.home),
          ),
          ListTile(
            onTap: () {
              print("PINDAH KE PAGE PRODUCT");
            },
            leading: Icon(Icons.shopping_cart),
            title: Text("Product"),
            //trailing: Icon(Icons.arrow_forward_ios_rounded),
            //trailing: Icon(Icons.home),
          ),
          ListTile(
            onTap: () {
              print("PINDAH KE PAGE HOME");
            },
            leading: Icon(Icons.home),
            title: Text("Home"),
            //trailing: Icon(Icons.arrow_forward_ios_rounded),
            //trailing: Icon(Icons.home),
          ),
          ListTile(
            onTap: () {
              print("PINDAH KE PAGE PRODUCT");
            },
            leading: Icon(Icons.shopping_cart),
            title: Text("Product"),
            //trailing: Icon(Icons.arrow_forward_ios_rounded),
            //trailing: Icon(Icons.home),
          ),
          ListTile(
            onTap: () {
              print("PINDAH KE PAGE HOME");
            },
            leading: Icon(Icons.home),
            title: Text("Home"),
            //trailing: Icon(Icons.arrow_forward_ios_rounded),
            //trailing: Icon(Icons.home),
          ),
          ListTile(
            onTap: () {
              print("PINDAH KE PAGE PRODUCT");
            },
            leading: Icon(Icons.shopping_cart),
            title: Text("Product"),
            //trailing: Icon(Icons.arrow_forward_ios_rounded),
            //trailing: Icon(Icons.home),
          ),
        ])),
      ])),
    );
  }
}
