import 'package:flutter/material.dart';

class DetailArtScreen extends StatelessWidget {
  final String jenis;
  final String images;
  final List<String> galeri;
  final String deskripsi;

  DetailArtScreen({
    required this.jenis,
    required this.images,
    required this.galeri,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(jenis),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(images,
            fit: BoxFit.cover,
            height: 250,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              jenis,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              deskripsi,
              style: TextStyle(
                fontSize: 16
              ),
              textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Galeri',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: galeri.length,
                itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.all(10),
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(galeri[index]),
                        fit: BoxFit.cover,
                      )
                    ),
                  );
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}