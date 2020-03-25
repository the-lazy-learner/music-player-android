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
          SizedBox(height: MediaQuery.of(context).padding.top),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SoftButton(
                child: Icon(Icons.arrow_back, size: 32),
                onTap: () => Navigator.maybePop(context),
              ),
              Text('Songs', style: Theme.of(context).textTheme.headline4),
              SoftButton(
                child: Icon(Icons.menu, size: 32),
              ),
            ],
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
                    return ListTile(
                      title: Text(songs[index].title),
                      subtitle: Text(songs[index].artist),
                      trailing: Icon(Icons.play_arrow, size: 40),
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
