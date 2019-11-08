import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter_original.dart';

void main() {
  runApp(new FontAwesomeGalleryApp());
}

class FontAwesomeGalleryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Font Awesome Flutter Gallery',
      home: new FontAwesomeGalleryHome(),
    );
  }
}

class FontAwesomeGalleryHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new FontAwesomeGalleryHomeState();
}

class FontAwesomeGalleryHomeState extends State<FontAwesomeGalleryHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: FontAwesomeIconsOriginal.icons.length,
        itemBuilder: (context, index) {
          String key = FontAwesomeIconsOriginal.icons.keys.elementAt(index);
          return ListTile(
            leading: Icon(FontAwesomeIconsOriginal.icons[key]),
            title: new Text("$key"),
          );
        },
      ),
    );
  }
}
