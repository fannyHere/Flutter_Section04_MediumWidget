import 'package:flutter/material.dart';

class PhotoProfile extends StatelessWidget {
  const PhotoProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
          height: 110,
          width: 110,
          //color: Colors.amberAccent,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(110 / 2),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [Colors.deepPurpleAccent, Colors.amber]))),
      Container(
        height: 100,
        width: 100,
        //color: Colors.amberAccent,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100 / 2),
            border: Border.all(color: Color.fromARGB(255, 255, 255, 255)),
            color: Colors.grey[300],
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/emong.jpg"),
            )),
      ),
    ]);
  }
}
