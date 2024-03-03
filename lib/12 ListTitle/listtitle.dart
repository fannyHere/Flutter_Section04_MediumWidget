import 'package:flutter/material.dart';

class listtile extends StatelessWidget {
  const listtile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List Tile"),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: ListView(
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(top: 10),
              title: Text("Fany"),
              subtitle: Text("description of me"),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
              tileColor: Colors.blueGrey,
              // onTap: () {

              // }, //untuk ngeklik salah satu chat danmasuk ke dalam chat room
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Fany"),
              subtitle: Text(
                  "description of me, shdgshdsdytdysdys ysfdgsfdsdfs gsgfdsgfdsgdfsgf",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
              dense: true,
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Fany"),
              subtitle: Text("description of me"),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Fany"),
              subtitle: Text("description of me"),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Fany"),
              subtitle: Text("description of me"),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Fany"),
              subtitle: Text("description of me"),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Fany"),
              subtitle: Text("description of me"),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Fany"),
              subtitle: Text("description of me"),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Fany"),
              subtitle: Text("description of me"),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Fany"),
              subtitle: Text("description of me"),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Fany"),
              subtitle: Text("description of me"),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
          ],
        ));
  }
}
