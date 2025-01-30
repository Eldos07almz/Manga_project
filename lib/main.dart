import 'package:flutter/material.dart';
import 'manga_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Manga Reader',
      theme: ThemeData.dark(),
      home: MangaHomePage(),
    );
  }
}
