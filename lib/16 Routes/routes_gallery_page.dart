import 'package:flutter/material.dart';
import 'package:section_4/16%20Routes/routes_photo.dart';

class routes_gallery_page extends StatelessWidget {
  const routes_gallery_page({super.key});

  static const nameRoute = '/routes_gallery_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2 yolah"),
        backgroundColor: Colors.brown,
        //leading: Container(), //supaya ngga ada btn backnya
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "MY GALLERY PAGE",
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      //PAKE CARA NAVIGASI DAN ROUTES:
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "<<BACK",
                      style: TextStyle(fontSize: 30),
                    )),
                TextButton(
                    onPressed: () {
                      //PAKE CARA NAVIGASI:
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) {
                      //   return routes_photo_page();
                      // }));

                      //PAKE CARA ROUTES MANUAL:
                      // Navigator.of(context).pushNamed('/photo');
                      //PAKE CARA ROUTES YANG UDAH DIDAFTARIN:
                      Navigator.of(context)
                          .pushNamed(routes_photo_page.nameRoute);
                    },
                    child: Text(
                      "NEXT>>",
                      style: TextStyle(fontSize: 30),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
