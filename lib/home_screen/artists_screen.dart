import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';

class ArtistsScreen extends StatefulWidget {
  @override
  _ArtistsScreenState createState() => _ArtistsScreenState();
}

class _ArtistsScreenState extends State<ArtistsScreen> {
  final _audioQuery = FlutterAudioQuery();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<ArtistInfo>>(
        future: _audioQuery.getArtists(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: Text(
                'No data found or data loading',
                style: Theme.of(context).textTheme.headline2,
              ),
            );
          }
          final artists = snapshot.data;
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: artists.length,
            itemBuilder: (context, index) {
              final artist = artists[index];
              return Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: (artist.artistArtPath != null) ? FileImage(File(artist.artistArtPath)) : AssetImage('assets/images/undefined_art.png')),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(artist.name, style: Theme.of(context).textTheme.headline6),
                      Text('${artist.numberOfTracks} songs'),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
