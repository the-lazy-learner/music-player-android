import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';

import '../ui/soft_button.dart';

class PlayingScreen extends StatefulWidget {
  final SongInfo song;

  const PlayingScreen({Key key, this.song}) : super(key: key);
  @override
  _PlayingScreenState createState() => _PlayingScreenState();
}

class _PlayingScreenState extends State<PlayingScreen> {
  @override
  Widget build(BuildContext context) {
    final albumArt = this.widget.song.albumArtwork;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).padding.top + 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SoftButton(child: Icon(Icons.arrow_back, size: 24)),
                Text('Now Playing',
                    style: Theme.of(context).textTheme.headline4),
                SoftButton(child: Icon(Icons.menu, size: 24)),
              ],
            ),
          ),
          SizedBox(height: 10),
          CircleAvatar(
            backgroundImage: (albumArt != null)
                ? FileImage(File(albumArt))
                : AssetImage('assets/images/undefined_art.png'),
            radius: 125,
          ),
          SizedBox(height: 20),
          Text(this.widget.song.title, style: Theme.of(context).textTheme.headline5),
          Text(this.widget.song.artist, style: Theme.of(context).textTheme.headline6),
          Text(this.widget.song.album),
          SizedBox(height: 40),
          Slider(value: 0.5, onChanged: null),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SoftButton(child: Icon(Icons.fast_rewind, size: 24)),
              SoftButton(child: Icon(Icons.play_arrow, size: 24)),
              SoftButton(child: Icon(Icons.fast_forward, size: 24)),
            ],
          ),
        ],
      ),
    );
  }
}
