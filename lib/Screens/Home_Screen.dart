import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

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
              backgroundColor: Colors.black,
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
          padding: EdgeInsets.all(10),
          child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child:SizedBox(
                  width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 39, 37, 37),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                    ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/art');
                  },
                  child: Text('Art is a Blasting'),
                  ),
                ),
              ),  
            ],
          ),
        ),
        ),
      ),
      ),
    );
  }
}
