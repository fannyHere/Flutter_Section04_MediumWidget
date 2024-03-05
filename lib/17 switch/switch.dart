import 'package:flutter/material.dart';
import 'package:section_4/appbar_widget.dart';

class mySwitch extends StatefulWidget {
  const mySwitch({super.key});

  @override
  State<mySwitch> createState() => _mySwitchState();
}

class _mySwitchState extends State<mySwitch> {
  bool statusSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Switch.adaptive( //type 1
            Container(
              color: Colors.pink,
              // height: 100,
              // width: 1000,
              //ga ngaruh buat nambahin tinggi sama lebar
              child: Switch(
                //type 2
                activeColor: Colors
                    .deepOrange, //bagian buletannnya warna oren nah yang lainnya iku orens
                inactiveThumbColor:
                    Colors.limeAccent, //bagian buletannnya warna lime
                inactiveTrackColor:
                    Colors.deepPurple, //warna tracking colornya pasgaaktif ungu
                activeTrackColor:
                    Colors.black, //warna tracking pas gaaktif hitam
                activeThumbImage: AssetImage("assets/emong.jpg"),
                inactiveThumbImage: AssetImage("assets/pict3.jpg"),
                value: statusSwitch,
                onChanged: (value) {
                  setState(() {
                    statusSwitch = !statusSwitch;
                  });
                  print(statusSwitch);
                },
              ),
            ),
            //cara if-else 1:
            //if (statusSwitch == true)
            //Text('aktif')
            //else
            //Text('tidak aktif')

            //cara if-else 2:
            //if (statusSwitch== true) "aktif" else "Tidak Aktif",
            //tapi error

            //cara if-else 3:
            Text(statusSwitch == true ? 'Aktif' : 'Tidak Aktif'),
            //kalo statusswitch nya true nanya tuh maka aktif dan klo ga : ya tidak aktif
          ],
        ),
      ),
    );
  }
}
