import 'package:flutter/material.dart';
import 'package:section_4/16%20Routes/routes_gallery_page.dart';
import 'package:section_4/16%20Routes/routes_home_page.dart.dart';
import 'package:section_4/16%20Routes/routes_photo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: routes_homepage(),

        //MENDAFTARKAN SECARA MANUAL:
        // initialRoute: '/homepage', //halaman pertama yang dibuka
        // routes: {
        //   //mendaftarkan halaman untuk navigasi ke halaman lain di sini:
        //   // '/homepage': (context) => routes_homepage(),
        //   // '/gallery': (context) => routes_gallery_page(),
        //   // '/photo': (context) => routes_photo_page(),
        // },

        //MENDAFTARKAN SETELAH NARO: static const nameRoute = '/routes_homepage'; DI SETIAP PAGE
        initialRoute: routes_homepage.nameRoute,
        routes: {
          routes_homepage.nameRoute: (context) => routes_homepage(),
          routes_gallery_page.nameRoute: (context) => routes_gallery_page(),
          routes_photo_page.nameRoute: (context) => routes_photo_page(),
        });
  }
}
