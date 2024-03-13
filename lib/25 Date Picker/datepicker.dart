import 'package:flutter/material.dart';
import 'package:section_4/appbar_widget.dart';
//import 'package:intl/intl.dart';

// ignore: must_be_immutable
class MyDatePicker extends StatefulWidget {
  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  //const MyDatePicker({super.key});
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectDate.toString(),
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            OutlinedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: selectDate,
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2027),
                  //initialEntryMode: DatePickerEntryMode.calendar, //keluar kalender biasa
                  //initialEntryMode: DatePickerEntryMode.input,
                  // initialDatePickerMode:
                  //     DatePickerMode.year, //pertama kali munculnya apa? tahun
                  selectableDayPredicate: (day) {
                    if ((day.isBefore(
                          DateTime.now().add(
                            Duration(
                              days: 2,
                            ),
                          ),
                        )) &&
                        (day.isAfter(
                          DateTime.now().subtract(
                            Duration(
                              days: 2,
                            ),
                          ),
                        ))) {
                      return true;
                    } else {
                      return false;
                    }
                  },
                  helpText: "Help text",
                  cancelText: "cancel text",
                  confirmText: "confirm text",
                  fieldHintText: "field hint text",
                  fieldLabelText: "field label text",
                  builder: (context, child) {
                    return Theme(
                      data: ThemeData.dark(),
                      child: child != null ? child : SizedBox(),
                    );
                  },
                ).then((value) {
                  if (value != null)
                    //karena showdatepickeritu type datanya future
                    //return print(value);
                    //ini output klo klik cancel: null
                    //ini output klo klik salah satu tgl: 2024-03-13 00:00:00.000
                    setState(() {
                      selectDate = value;
                    });
                });
              },
              child: Text("Date Picker"),
            ),
          ],
        ),
      ),
    );
  }
}
