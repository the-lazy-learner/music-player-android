import 'package:flutter/material.dart';

import 'home_screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        backgroundColor: Colors.indigo.shade200,
        scaffoldBackgroundColor: Colors.indigo.shade200,
        dialogBackgroundColor: Colors.indigo.shade200,
      ),
      home: HomeScreen(),
    );
  }
}


