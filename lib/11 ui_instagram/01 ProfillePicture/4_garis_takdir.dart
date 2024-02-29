import 'package:flutter/material.dart';

class icon_IG extends StatelessWidget {
  const icon_IG(this.Ikon, this.active);

  final bool active;
  final Ikon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: active == true ? Colors.black : Colors.white,
          width: 1,
        ))),
        child: Icon(Ikon),
      ),
    );
  }
}
