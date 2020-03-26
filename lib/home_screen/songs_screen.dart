import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';

import '../ui/soft_button.dart';

class SongsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final audioQuery = FlutterAudioQuery();
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
                SoftButton(
                  child: Icon(Icons.arrow_back, size: 24),
                  onTap: () => Navigator.maybePop(context),
                ),
                Text('Songs', style: Theme.of(context).textTheme.headline4),
                SoftButton(
                  child: Icon(Icons.search, size: 24),
                ),
              ],
            ),
          ),
          Expanded(
            child: FutureBuilder<List<SongInfo>>(
              future: audioQuery.getSongs(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Text(
                    'No data',
                    style: Theme.of(context).textTheme.headline4,
                  );
                }
                final songs = snapshot.data;
                return ListView.builder(
                  itemCount: songs.length,
                  itemBuilder: (context, index) {
                    final albumArt = songs[index].albumArtwork;
                    return ListTile(
                      title: Text(songs[index].title),
                      subtitle: Text(songs[index].artist),
                      leading: CircleAvatar(
                        backgroundImage: (albumArt != null)
                            ? FileImage(File(albumArt))
                            : AssetImage('assets/images/undefined_art.png'),
                      ),
                      trailing: SoftButton(
                        child: Icon(Icons.play_arrow, size: 24),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
