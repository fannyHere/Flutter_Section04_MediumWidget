import 'package:flutter/material.dart';
import 'package:section_4/11%20ui_instagram/01%20ProfillePicture/1_photoprofil.dart';

class Kul_version extends StatelessWidget {
  const Kul_version({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "fannylian",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
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
              )),
        ],
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20), children: [
        Row(
          children: [
            PhotoProfile(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "999",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Posts"),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "999",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Following"),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "999",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Followers"),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
