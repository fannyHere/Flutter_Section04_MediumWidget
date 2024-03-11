import 'package:flutter/material.dart';

class Mylayoutbuilder extends StatelessWidget {
  const Mylayoutbuilder({super.key});

//apa itu constrain? untukmendapatkan parameter-parameter dari parentnya

  @override
  Widget build(BuildContext context) {
    final widthApp = MediaQuery.of(context).size.width;
    final heightApp = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;

    final myAppbar =
        AppBar(title: Text("layout builder"), backgroundColor: Colors.amber);
    final heightBody = heightApp - myAppbar.preferredSize.height - paddingTop;

    return Scaffold(
      appBar: myAppbar,
      body: Center(
        child: Container(
          width: widthApp * 0.9, //double.infinity, //==> pasang media query
          height: heightBody * 0.4,
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //parameter heightApp gaperlu ditulis karena mengikuti constraint height dari extract widget di bawah
              // exwid_container(widthApp, heightApp),
              // exwid_container(widthApp, heightApp),
              // exwid_container(widthApp, heightApp),
              exwid_container(
                widthApp,
              ),
              exwid_container(
                widthApp,
              ),
              exwid_container(
                widthApp,
              )
            ],
          ),
        ),
      ),
    );
  }
}

//type 1:

// class exwid_container extends StatelessWidget {
//   const exwid_container({
//     super.key,
//     required .widthApp;
//      required.heightApp;
//   });
//  final double widthApp;
//  final double heightApp;

//type 2:

// class ExWidContainer extends StatelessWidget {
//   const ExWidContainer({
//     Key? key,
//     required this.widthApp,
//      required this.heightApp,
//   }) : super(key: key);
//  final double widthApp;
//  final double heightApp;

//PENTINGS: about layout builderrrrr:
//supaya pasheight abu2nya berubah ukuran langsung ikutan berubah juga box xontainer amber di dalamnya jadi otomatis gitunahitu pake cara constraint

//cara 1 :manual
// ignore: must_be_immutable
// class exwid_container extends StatelessWidget {
//   // double widthApp;
//   // double heightApp;

//   //karena ini stateless pake final
//   final double widthApp;
//   final double heightApp;
//   exwid_container(this.widthApp, this.heightApp);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.amber,
//       width: widthApp * 0.25,
//       height: heightApp *
//           0.20, //kloheightnya ga ditenuin nanti penuh //materiinvisible and visible widget row
//     );
//   }
// }

//cara 2: otomatis pakai constraint
class exwid_container extends StatelessWidget {
  final double widthApp;
  //final double heightApp; ==> ini gaperlu karena ngikutin constraint height
  //exwid_container(this.widthApp, this.heightApp); //ini this height gaperlu karena ngikutin contrainst height
  exwid_container(this.widthApp);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          color: Colors.amber,
          width: widthApp * 0.25,
          height: constraints.maxHeight * 0.5,
          //si contsraint itu ngikutin ukuran height yg di atas=>  height: heightBody * 0.4,
          //ngikutin data dariparent container ==> yg ada ukurannya
        );
      },
    );
  }
}
