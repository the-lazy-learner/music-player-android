import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const CategoryCard({Key key, this.icon, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF333366),
      elevation: 4.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 60),
          Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          )
        ],
      ),
    );
  }
}