import 'package:flutter/material.dart';

import '../ui/soft_button.dart';

class SongsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 20,
            top: MediaQuery.of(context).padding.top + 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SoftButton(
                  child: Icon(Icons.arrow_back),
                  onTap: () => Navigator.maybePop(context),
                ),
                Text(
                  'Songs',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
