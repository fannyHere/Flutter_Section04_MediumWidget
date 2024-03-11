import 'package:flutter/material.dart';
import 'package:section_4/22%20FittedBox/fittBox.dart';
//import 'package:flutter/services.dart';
// import 'package:section_4/16%20Routes/routes_gallery_page.dart';
// import 'package:section_4/16%20Routes/routes_home_page.dart.dart';
// import 'package:section_4/16%20Routes/routes_photo.dart';

void main() {
  //supaya gabisa dipotrait dan landscape
  // WidgetsFlutterBinding();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown]);
  //portraitUp, yang berarti aplikasi hanya akan mendukung orientasi potret dan akan tetap berada dalam mode potret meskipun perangkat fisiknya mungkin dapat dirotasi ke orientasi lainnya.

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyFitBox(),

      //MENDAFTARKAN SECARA MANUAL:
      // initialRoute: '/homepage', //halaman pertama yang dibuka
      // routes: {
      //   //mendaftarkan halaman untuk navigasi ke halaman lain di sini:
      //   // '/homepage': (context) => routes_homepage(),
      //   // '/gallery': (context) => routes_gallery_page(),
      //   // '/photo': (context) => routes_photo_page(),
      // },

      //MENDAFTARKAN SETELAH NARO: static const nameRoute = '/routes_homepage'; DI SETIAP PAGE
      // initialRoute: routes_homepage.nameRoute,
      // routes: {
      //   routes_homepage.nameRoute: (context) => routes_homepage(),
      //   routes_gallery_page.nameRoute: (context) => routes_gallery_page(),
      //   routes_photo_page.nameRoute: (context) => routes_photo_page(),
      // },

//--------------------------------------------------------------------------------------//
      // theme: ThemeData(
      //     // brightness: Brightness.dark, //defaultnya white//tema layar
      //     //visualDensity: VisualDensity.adaptivePlatformDensity, //default
      //     visualDensity: VisualDensity(
      //         horizontal: 4, vertical: 4), //untuk ngituin posisi default fitur

      //     // primarySwatch: MaterialColor(
      //     //   0xffe55f48, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
      //     //   const <int, Color>{
      //     //     50: const Color(0xffce5641), //10%
      //     //     100: const Color(0xffb74c3a), //20%
      //     //     200: const Color(0xffa04332), //30%
      //     //     300: const Color(0xff89392b), //40%
      //     //     400: const Color(0xff733024), //50%
      //     //     500: const Color(0xff5c261d), //60%
      //     //     600: const Color(0xff451c16), //70%
      //     //     700: const Color(0xff2e130e), //80%
      //     //     800: const Color(0xff170907), //90%
      //     //     900: const Color(0xff000000), //100%
      //     //   },
      //     appBarTheme: AppBarTheme(
      //         color: Colors.purpleAccent,
      //         titleTextStyle: TextStyle(
      //             fontFamily: "Anta", color: Colors.limeAccent, fontSize: 30)),
      //     primarySwatch: Colors
      //         .amber, //appbar sama buttonnya sama floatiingnya warnanya sama //LAPISAN 1 INTI
      //     primaryColor:
      //         Colors.deepOrange, //warna appbarnya aja yang kuning //LAPISAN 2
      //     //accentColor: Colors.green,
      //     textTheme: TextTheme(
      //         bodyMedium: TextStyle(
      //       fontFamily: "Anta",
      //       color: Colors.amber,
      //     ))),
    );
  }
}
