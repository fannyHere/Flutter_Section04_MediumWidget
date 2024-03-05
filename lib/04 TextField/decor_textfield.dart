import 'package:flutter/material.dart';
import 'package:section_4/appbar_widget.dart';

class decoration_textfield extends StatelessWidget {
  const decoration_textfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
            autocorrect: false,
            showCursor: true, //nunjukin kursor
            cursorColor: Colors.blueAccent,
            // cursorWidth: 10,
            // cursorHeight: 25,
            // cursorRadius: Radius.circular(20),

            textAlign: TextAlign.start, //mulai ngetik dari mana kursornya
            textAlignVertical: TextAlignVertical
                .center, //kaya maunulis di bawah, tengah, taau atas garis
            textCapitalization: TextCapitalization
                .none, //buat kapitalatau ngganya => baiknya make none

            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 20,
            ),

            decoration: InputDecoration(
              fillColor: Colors.orange,
              filled: true,
              icon: Icon(
                Icons.person,
                size: 50,
              ),
              border: OutlineInputBorder(
                  //ngga ngaru border sebelum focus ini udah default grey ==> eh ternyata bisa diganti make enabled
                  //   borderSide: BorderSide(
                  // color: Colors.pink,
                  ),
              //nih bisa diganti kwkwkwwk
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.yellowAccent,
              )),

              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.pink,
              )),
              prefix: Icon(Icons.add_a_photo),

//dialnjutin lagi fan biar matanya kebuka

              suffixIcon: IconButton(
                  onPressed: () {}, icon: Icon(Icons.remove_red_eye)),

              //make fungsi if else

              prefixIcon: Icon(
                //masukin icon ke colom pada awalan pre
                Icons.person,
                size: 50,
              ),
              //prefixText: "name: ", //pas diklik dia ada di dalam kolom name nya
              hintText: "please input your name!",
              hintStyle: TextStyle(
                color: Colors.lightBlue,
              ),
              labelText: "Full Name",
            ),
          ),
        ),
      ),
    );
  }
}
