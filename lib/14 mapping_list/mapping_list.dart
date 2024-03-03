import 'package:flutter/material.dart';
import 'package:section_4/appbar_widget.dart';

class MappingList extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    //String == berupa key
    //value == dynamic (bisaberupastring/integer/mapping)
    //name itu key; fanny itu value
    {
      "Name": "Fanny",
      "Age": 21,
      "favColor": ["Black", "White", "Red"]
    },
    {
      "Name": "liany",
      "Age": 31,
      "favColor": [
        "red",
        "blue",
        "green",
        "red",
        "blue",
        "green",
        "red",
        "blue",
        "green",
        "red",
        "blue",
        "green"
      ]
    },
    {
      "Name": "liany",
      "Age": 31,
      "favColor": [
        "red",
        "blue",
        "green",
        "red",
        "blue",
        "green",
        "red",
        "blue",
        "green",
        "red",
        "blue",
        "green"
      ]
    },
    {
      "Name": "Fanny",
      "Age": 21,
      "favColor": ["Black", "White", "Red"]
    },
    {
      "Name": "liany",
      "Age": 31,
      "favColor": [
        "red",
        "blue",
        "green",
        "red",
        "blue",
        "green",
        "red",
        "blue",
        "green",
        "red",
        "blue",
        "green"
      ]
    },
    {
      "Name": "liany",
      "Age": 31,
      "favColor": [
        "red",
        "blue",
        "green",
        "red",
        "blue",
        "green",
        "red",
        "blue",
        "green",
        "red",
        "blue",
        "green"
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: ListView(
        children: myList.map((data) {
          //print(data);
          print("-----------------------");
          print(data["favColor"]);
          print("-----------------------");
          List myfavColor = data[
              //klo udah dimasukin ke dalam List ==> maka nanti bisa dimapping
              "favColor"]; //data myfavcolor dimasukin ke dalam variable myfavcolor, yang bentuknya sebuah list
          print(myfavColor);

          //mengubah myList menjadi list, jadi nanti ada list ke-1 list ke-2
          //apa yang dimapping? ==> me-mapping sebuah (data)
          return Card(
              margin: EdgeInsets.all(20),
              color: Colors.tealAccent.withOpacity(0.5), //rentang nilainya 0-1
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start, //untuk samarata
                            children: [
                              Text("Name: ${data["Name"]}"),
                              Text("Age: ${data["Age"]}"),
                            ],
                          ),
                        ],
                      ),
                      //nah sekarang si row nya ini yang mau diloopings
                      //data awal:
                      // Row(
                      //   children: [
                      //     Container(
                      //       child: Text("Black"),
                      //     ),
                      //     Container(
                      //       child: Text("Green"),
                      //     )
                      //   ],
                      // )

                      //data coba-coba;
                      //eror:karena children membutuhkan list<widget> bukan list dari data
                      // Row(
                      //   children: data["favColor :"],
                      // ),
                      SizedBox(
                        height: 20,
                      ),
                      //nah bikin list map untuk myFavColor di atas trus taro di sini
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: myfavColor.map((Color) {
                            return Container(
                              color: Colors.deepOrangeAccent,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              padding: EdgeInsets.all(10),
                              child: Text(Color),
                            );
                          }).toList(),
                        ),
                      )
                    ]),
              ));
        }).toList(), //mengubah myList menjadi list, jadi nanti ada list ke-1 list ke-2
        //apa yang dimapping? ==> me-mapping sebuah (data)
      ),
    );
  }
}
