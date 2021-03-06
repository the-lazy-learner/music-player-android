import 'package:flutter/material.dart';

import 'artists_screen.dart';
import 'category_card.dart';
import 'songs_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          GestureDetector(
            child: CategoryCard(
              title: 'Songs',
              icon: Icons.music_note,
            ),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => SongsScreen())
              );
            },
          ),
          GestureDetector(
            child: CategoryCard(
              title: 'Artists',
              icon: Icons.account_circle,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ArtistsScreen()));
            },
          ),
          CategoryCard(
            title: 'Albums',
            icon: Icons.album,
          ),
          CategoryCard(
            title: 'Playlists',
            icon: Icons.library_music,
          ),
          CategoryCard(title: 'Folders', icon: Icons.folder),
          CategoryCard(
            title: 'Genres',
            icon: Icons.equalizer,
          ),
        ],
      ),
    );
  }
}
