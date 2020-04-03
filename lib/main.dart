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
        backgroundColor: const Color(0xFFCCDEFA),
        scaffoldBackgroundColor: const Color(0xFFCCDEFA),
        dialogBackgroundColor: const Color(0xFFCCDEFA),
        fontFamily: 'Montserrat',
      ),
      darkTheme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}


