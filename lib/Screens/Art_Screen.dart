import 'package:flutter/material.dart';
import 'package:myapp/Screens/Detail_Art_Screen.dart';

class ArtScreen extends StatelessWidget {

  final List <Map<String, dynamic>> ArtData = [
    {
    'jenis' : "Lukisan",
    'images' : "assets/images/lukisan.jpg",
    'galeri' : [
      "assets/images/lukisan1.jpg",
      "assets/images/lukisan2.jpg",
      "assets/images/lukisan3.jpg"
    ],
    'deskripsi' : 'ekspresi kreatif visual yang menggunakan berbagai media untuk menciptakan gambar atau komposisi visual. Lukisan sering kali dihasilkan dengan menggunakan cat, pigmen, atau bahan lainnya yang diterapkan pada permukaan seperti kanvas, kertas, kayu, atau dinding.'
    },
    {
    'jenis' : "Tarian",
    'images' : "assets/images/tarian.jpg",
    'galeri' : [
      "assets/images/tarian1.jpg",
      "assets/images/tarian2.jpg",
      "assets/images/tarian3.jpg"
      ],
      'deskripsi' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
    }
  ];

  @override
Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300.0,
              floating: false,
              pinned: true,
              stretch: true,
              backgroundColor: Colors.grey,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  collapseMode: CollapseMode.parallax,
                  title: const Text("ART IS A BLAST",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      )),
                  background: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ16ExDeZZzGBVasaNU-V5MHigZ7mOUmvlmQ&s",
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage("assets/images/background.jpg"),
          //     fit: BoxFit.cover
          //   ),
          // ),
          child: ListView.builder(
            itemCount: ArtData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailArtScreen(
                        jenis: ArtData[index]['jenis'],
                        images: ArtData[index]['images'],
                        galeri: ArtData[index]['galeri'],
                        deskripsi: ArtData[index]['deskripsi'],
                      
                      ),
                    )
                  );
                },
                child: Container(
                  alignment: Alignment.bottomRight,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("${ArtData[index]['images']}"),
                      fit:  BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.5),
                    ),
                    child: Text(
                      "${ArtData[index]['jenis']}",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold, 
                       ),
                     ),
                   ),
                 ),
               );
             }
           ),
         ),
       ),
      ),
    );
  }
}