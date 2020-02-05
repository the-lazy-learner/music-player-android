import 'package:flutter/material.dart';

class NowPlayingWidget extends StatefulWidget {
  const NowPlayingWidget({
    Key key,
  }) : super(key: key);

  @override
  _NowPlayingWidgetState createState() => _NowPlayingWidgetState();
}

class _NowPlayingWidgetState extends State<NowPlayingWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF282A57),
            Colors.black,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
            ),
            Text(
              'One Call away - Charlie Puth',
              style: Theme.of(context).textTheme.display1.copyWith(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Material(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.skip_previous),
                    iconSize: 60,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.play_arrow),
                    iconSize: 60,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.skip_next),
                    iconSize: 60,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Slider(
              value: 0.5,
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
