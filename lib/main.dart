import 'package:flutter/material.dart';

import 'now_playing/playing_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        iconTheme: IconThemeData(
          color: Colors.deepOrange,
        ),
        sliderTheme: SliderThemeData(
          trackHeight: 4.0,
        )
      ),
      home: PlayingScreen(),
    );
  }
}


