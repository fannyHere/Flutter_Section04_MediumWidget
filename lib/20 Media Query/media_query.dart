import 'package:flutter/material.dart';

class med_query extends StatelessWidget {
  const med_query({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight =
        MediaQuery.of(context).size.height; //full untuk satu layar height
    final MediaQueryWidth =
        MediaQuery.of(context).size.width; //fulluntuk satu layar width

    //dibuat variable function untuk dimasukin ke dalam body height
    final myAppbar = AppBar(
      title: Text("media query"),
      backgroundColor: Colors.blue,
    );

    //tinggi all mediaqueryheight setelah dikurang sama myAppbar dan dikurang padding top (icon jam, baterai dll)
    final bodyHeight = MediaQueryHeight -
        myAppbar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
        appBar: myAppbar,
        body: Center(
          child: (isLandscape) //klo landscape ?maka ini
              ? Column(
                  children: [
                    Container(
                      height: bodyHeight * 0.5, //klolandscpae
                      //width: 400, //ini adalah hardcode
                      width: MediaQueryWidth, //width penuh pakai media query
                      color: Colors.amber,
                    ),
                    Container(
                      //height: 300, //hardcode
                      //mediaquery itu panjanganya dari atas device sampai ke bawah device
                      height: bodyHeight * 0.5, //klo landscpae
                      color: Colors.deepOrange,

                      //klo TAMPILANNYA LISTVIEW:
                      // child: ListView.builder(
                      //   itemCount: 100,
                      //   itemBuilder: (context, index) {
                      //     return ListTile(
                      //       //contentPadding: EdgeInsets.all(20),
                      //       title: Text("Fany"),
                      //       subtitle: Text("description of me"),
                      //       leading: CircleAvatar(),
                      //       trailing: Text("10:00 PM"),

                      //       //tileColor: Colors.blueGrey,
                      //     );
                      //   },
                      // ),

                      //KLO TAMPILANNYA GRIDVIEW
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: 100,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text("Fany"),
                            subtitle: Text("description of me"),
                            leading: CircleAvatar(),
                            trailing: Text("10:00 PM"),
                          );
                        },
                      ),
                    ),
                  ],
                )
              : Column(
                  //klo lainnya (alias ga landcape) maka ini
                  children: [
                    Container(
                      height: bodyHeight * 0.3,
                      //width: 400, //ini adalah hardcode
                      width: MediaQueryWidth, //width penuh pakai media query
                      color: Colors.amber,
                    ),
                    Container(
                        //height: 300, //hardcode
                        //mediaquery itu panjanganya dari atas device sampai ke bawah device
                        height: bodyHeight * 0.7,
                        color: Colors.deepOrange,
                        child: ListView.builder(
                          itemCount: 100,
                          itemBuilder: (context, index) {
                            return ListTile(
                              //contentPadding: EdgeInsets.all(20),
                              title: Text("Fany"),
                              subtitle: Text("description of me"),
                              leading: CircleAvatar(),
                              trailing: Text("10:00 PM"),

                              //tileColor: Colors.blueGrey,
                            );
                          },
                        )),
                  ],
                ),
        ));
  }
}
