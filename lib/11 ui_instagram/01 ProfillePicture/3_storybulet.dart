import 'package:flutter/material.dart';

class StoryBulet extends StatelessWidget {
  StoryBulet(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: Colors.grey),
              ),
              Container(
                width: 84,
                height: 84,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3),
                    borderRadius: BorderRadius.circular(42),
                    color: Colors.grey[300],
                    image: DecorationImage(
                        image: NetworkImage("http://picsum.photos/536/354"),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(title),
        ],
      ),
    );
  }
}
