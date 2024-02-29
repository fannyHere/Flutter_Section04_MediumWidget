import 'package:flutter/material.dart';

class follower_ing_posts extends StatelessWidget {
  follower_ing_posts(this.angka, this.text);

  final String angka;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          angka,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text),
      ],
    );
  }
}
