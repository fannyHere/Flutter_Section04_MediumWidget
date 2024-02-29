import 'package:flutter/material.dart';

class ui_insta extends StatelessWidget {
  const ui_insta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, //buat ngewarnain berdasarkan tebal atau tidaknya
        title: Row(
          //kenapa pakai row? karena dalam satu baris itu lebih dari 1 widget
          children: [
            Text(
              "fannyfan",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
            //cara ke-1
            // Spacer(), // Menambahkan spacer untuk memindahkan icon ke sisi kanan
            // IconButton(
            //   icon: Icon(Icons.add_box_outlined),
            //   onPressed: () {
            //     // Tambahkan fungsi onPressed sesuai kebutuhan
            //   },
            // ),
            // IconButton(
            //   icon: Icon(Icons.menu),
            //   onPressed: () {
            //     // Tambahkan fungsi onPressed sesuai kebutuhan
            //   },
            // ),
          ],
        ),

        //cara ke-2
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_box_outlined,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
              ))
        ],
      ),
      body: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          ClipOval(
            child: Image.asset(
              "assets/pict3.jpg",
              height: 90,
              width: 90,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            color: Colors.amberAccent,
            height: 90,
            width: 90,
            child: Center(
              child: Text(
                "0,000",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            color: Colors.blueAccent,
            height: 90,
            width: 90,
            child: Text(
              "0,000",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            color: Colors.deepOrangeAccent,
            height: 90,
            width: 90,
            child: Text(
              "0,000",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      extendBody: true,
    );
  }
}
