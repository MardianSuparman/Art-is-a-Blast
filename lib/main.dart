import 'package:flutter/material.dart';
import 'package:myapp/Screens/Art_Screen.dart';
import 'package:myapp/Screens/Content_Feed_Screen.dart';

import 'package:myapp/Screens/Home_Screen.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "home": (context) => HomeScreen(),
        '/art': (context) => ArtScreen(),
        '/content': (context) => NewsFeedPage2(),
      },
      initialRoute: "home",
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}