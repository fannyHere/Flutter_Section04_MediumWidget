import 'package:flutter/material.dart';

//pakai  defaultcontroller
class Tab_bar_defaultTabController extends StatelessWidget {
  const Tab_bar_defaultTabController({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //==> konsekuensinya klo gada ini maka harus nambahin controller di tabbar sama tabbar view
      //DefaultTabController adalah spesifik untuk pengaturan tab di Flutter.
      //Dengan menempatkan DefaultTabController di dalam Scaffold, kita bisa memanfaatkan fitur-fitur yang disediakan oleh Scaffold,
      //seperti appBar untuk menampilkan AppBar di bagian atas layar, dan juga body untuk menempatkan konten atau widget lain di bawah tab-bar.
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          //controller: , //klo gada defaultcontroller
          backgroundColor: Colors.lightBlue,
          title: Text("tabBar"),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.camera_alt), //supaya ada stylingnya
            ),
            // Icon(Icons.camera_alt),
            Tab(
              text: "Chats", //make cara ini aja
              //child: Text("Chats") //kepanjangan
            ),
            Tab(text: "Status"),
            Tab(text: "Calls"),
          ]),
        ),
        body: TabBarView(children: [
          //controller: , //klo gada defaultcontroller
          Center(
            child: Text("Camera"),
          ),
          Center(
            child: Text("Chats"),
          ),
          Center(
            child: Text("Status"),
          ),
          Center(
            child: Text("Calls"),
          ),
        ]),
      ),
    );
  }
}

//pake controller per masing-masing tab bar
class Tab_bar_controller extends StatefulWidget {
  const Tab_bar_controller({super.key});

  @override
  State<Tab_bar_controller> createState() => _Tab_bar_controllerState();
}

class _Tab_bar_controllerState extends State<Tab_bar_controller>
    with SingleTickerProviderStateMixin {
//TabController tabC = TabController(length: 4, vsync: vsync);
  late TabController tabC = TabController(length: 4, vsync: this);
//vsync diarahin ke class tab bar .....make this dan late

//vsync itu membutuhkan ticker provider
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("tabBar"),
        centerTitle: true,
        bottom: TabBar(controller: tabC, tabs: [
          Tab(
            icon: Icon(Icons.camera_alt), //supaya ada stylingnya
          ),
          // Icon(Icons.camera_alt),
          Tab(
            text: "Chats", //make cara ini aja
            //child: Text("Chats") //kepanjangan
          ),
          Tab(text: "Status"),
          Tab(text: "Calls"),
        ]),
      ),
      body: TabBarView(controller: tabC, children: [
        Center(
          child: Text("Camera"),
        ),
        Center(
          child: Text("Chats"),
        ),
        Center(
          child: Text("Status"),
        ),
        Center(
          child: Text("Calls"),
        ),
      ]),
    );
  }
}
