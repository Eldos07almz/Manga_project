import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/manga_home_page.dart';
import 'package:flutter_application_1/routes.dart';

void main() {
  runApp(const MangaApp());
}

class MangaApp extends StatelessWidget {
  const MangaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manga Reader',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MangaHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
