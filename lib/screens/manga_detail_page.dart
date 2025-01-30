// manga_detail_page.dart
import 'package:flutter/material.dart';

class MangaDetailPage extends StatelessWidget {
  final Map<String, String> manga;

  MangaDetailPage({required this.manga});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(manga['title']!)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey[800],
              child: Center(
                  child: Text('Обложка манги',
                      style: TextStyle(color: Colors.white))),
            )),
            SizedBox(height: 20),
            Text(manga['title']!,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(manga['description']!, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
