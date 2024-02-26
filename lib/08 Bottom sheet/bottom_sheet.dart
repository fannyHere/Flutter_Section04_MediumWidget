import 'package:flutter/material.dart';

class bottom_sheet extends StatelessWidget {
  const bottom_sheet({super.key});
//error root itu bagian material app sama scaffoldnya dipisah
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.limeAccent,
        title: Text("Bottom Sheet"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  isDismissible:
                      false, //supaya pas panel atas scaffold , yg selain itu diklik ngga kembali atau back alia make tombol cancel aja
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  builder: (context) => Container(
                    height: 300,
                    //color: Colors.brown, //jangan diwarnain nantinya ngga kelihatan bulet
                    child: ListView(
                      children: [
                        ListTile(
                          onTap: () => print("KLIK PHOTO"),
                          leading: Icon(Icons.photo),
                          title: Text("Photo"),
                        ),
                        ListTile(
                          onTap: () => print("KLIK MUSIC"),
                          leading: Icon(Icons.music_note_rounded),
                          title: Text("Music"),
                        ),
                        ListTile(
                          onTap: () => print("KLIK VIDEO"),
                          leading: Icon(Icons.video_collection),
                          title: Text("Video"),
                        ),
                        ListTile(
                          onTap: () => print("KLIK SHARE"),
                          leading: Icon(Icons.share),
                          title: Text("Share"),
                        ),
                        ListTile(
                          onTap: () => Navigator.pop(context),
                          leading: Icon(Icons.cancel),
                          title: Text("Cancel"),
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Text("SHOW BOTTOM SHEET")),
        ),
      ),
    );
  }
}
