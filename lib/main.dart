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
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Montserrat',
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
        scaffoldBackgroundColor: Colors.grey[800],
        textTheme: Theme.of(context).textTheme.apply(
          displayColor: const Color(0xFF64FAB1),
          bodyColor: const Color(0xFF52C2FA),
          fontFamily: 'Montserrat',
        ),
      ),
      home: HomeScreen(),
    );
  }
}


