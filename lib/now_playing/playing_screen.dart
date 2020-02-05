import 'package:flutter/material.dart';

import 'current_playlist.dart';
import 'lyrics.dart';
import 'now_playing.dart';

class PlayingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.keyboard_arrow_down, size: 30),
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFF282A57),
                const Color(0xFF282A54),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: PageView(
        children: <Widget>[
          LyricsScreen(),
          NowPlayingWidget(),
          CurrentPlaylistScreen(),
        ],
      )
    );
  }
}

