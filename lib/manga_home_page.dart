// manga_home_page.dart
import 'package:flutter/material.dart';
import 'screens/manga_detail_page.dart';

class MangaHomePage extends StatelessWidget {
  final List<Map<String, String>> mangas = List.generate(
      10,
      (index) => {
            'title': 'Manga ${index + 1}',
            'description': 'Описание манги ${index + 1}',
          });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Manga Reader')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Верхний горизонтальный список манги
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding:
                    EdgeInsets.symmetric(horizontal: 16), // Отступы по бокам
                itemCount: mangas.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MangaDetailPage(manga: mangas[index]),
                        ),
                      );
                    },
                    child: Container(
                      width: 150,
                      margin: EdgeInsets.only(
                          right: 12), // Отступы между карточками
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(mangas[index]['title']!,
                              style: TextStyle(color: Colors.white))),
                    ),
                  );
                },
              ),
            ),

            // 🔹 Заголовок "Горячие новинки"
            Padding(
              padding: EdgeInsets.all(16),
              child: Text('Горячие новинки',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),

            // 🔹 Нижний горизонтальный список манги
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding:
                    EdgeInsets.symmetric(horizontal: 16), // Отступы по бокам
                itemCount: mangas.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MangaDetailPage(manga: mangas[index]),
                        ),
                      );
                    },
                    child: Container(
                      width: 150,
                      margin: EdgeInsets.only(
                          right: 12), // Отступы между карточками
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(mangas[index]['title']!,
                              style: TextStyle(color: Colors.white))),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
