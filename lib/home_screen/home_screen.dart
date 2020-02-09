import 'package:flutter/material.dart';

import 'category_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        CategoryCard(
          title: 'Songs',
          icon: Icons.music_note,
        ),
        CategoryCard(
          title: 'Artists',
          icon: Icons.account_circle,
        ),
        CategoryCard(
          title: 'Albums',
          icon: Icons.album,
        ),
        CategoryCard(
          title: 'Playlists',
          icon: Icons.library_music,
        ),
        CategoryCard(
          title: 'Folders',
          icon: Icons.folder
        ),
        CategoryCard(
          title: 'Genres',
          icon: Icons.equalizer,
        )
      ],
    ));
  }
}
