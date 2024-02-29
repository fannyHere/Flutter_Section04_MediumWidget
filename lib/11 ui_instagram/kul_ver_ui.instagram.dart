import 'package:flutter/material.dart';
import 'package:section_4/11%20ui_instagram/01%20ProfillePicture/1_photoprofil.dart';
import 'package:section_4/11%20ui_instagram/01%20ProfillePicture/2_fllowers_ing_post.dart';
import 'package:section_4/11%20ui_instagram/01%20ProfillePicture/3_storybulet.dart';
import 'package:section_4/11%20ui_instagram/01%20ProfillePicture/4_garis_takdir.dart';

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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                PhotoProfile(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      follower_ing_posts("987", "Posts"),
                      follower_ing_posts("986", "Following"),
                      follower_ing_posts("19998", "Followers"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "fannylian",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                text:
                    "Pastikan bahwa widget Row memiliki batas lebar yang terbatas sehingga kontennya tidak melebihi lebar layar atau lebar ruang yang tersedia. Kamu bisa menggunakan widget seperti Expanded.",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: " #Football #Tech",
                    style: TextStyle(color: Colors.blue),
                  ),
                  TextSpan(
                    text: " #Movie",
                    style: TextStyle(color: Color.fromARGB(255, 165, 54, 156)),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                text: "Link Goes Here",
                style: TextStyle(
                    color: Colors.blue, decoration: TextDecoration.underline),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              //elevated button => ngga ada bordernya, outlined button => ada bordernya
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(0), // Mengatur sudut bulat di sini
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryBulet("Story1"),
                  StoryBulet("Story2"),
                  StoryBulet("Story3"),
                  StoryBulet("Story4"),
                  StoryBulet("Story5"),
                  StoryBulet("Story6"),
                  StoryBulet("Story7"),
                  StoryBulet("Story8"),
                  StoryBulet("Story9"),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              icon_IG(Icons.grid_on_outlined, true),
              icon_IG(Icons.person_pin_outlined, false),
            ],
          ),
          GridView.builder(
            shrinkWrap:
                true, //untukmengatasi sesuatu yang dapat di scroll di dalam yg dapat discroll
            physics:
                NeverScrollableScrollPhysics(), //supaya si gridview gaush di scroll tapi bawaan dari listview

            itemCount: 14,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => Image.network(
              "http://picsum.photos/536/354",
              //"https://picsum.photos/id/${235 + index}/200/300",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 4, //yang keempat itu profile
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter),
              label: "Movie",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ]),
    );
  }
}
