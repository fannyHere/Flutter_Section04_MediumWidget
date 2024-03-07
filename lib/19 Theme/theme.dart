import 'package:flutter/material.dart';

//theme itu kaya CSS tapi external

class MyTheme extends StatelessWidget {
  const MyTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("fannyyyyyy yahooy"),
        centerTitle: true,
        //backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This a text",
                style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context)
                        .primaryColor)), //kloini ngambil dari warna theme
            SizedBox(height: 20),
            Text("This a text",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors
                        .blueAccent)), //klo ini ngambil dari warna manual dan status nya di layer teratas
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text("Im a button"),
              // style: ButtonStyle(
              //   backgroundColor: MaterialStateProperty.all<Color>(
              //       Colors.blue), // Background color
              //   foregroundColor: MaterialStateProperty.all<Color>(
              //       Colors.white), // Text color
              // ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.mediation),
      ),
    );
  }
}
