import 'package:flutter/material.dart';

import '../config.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kMyPadding / 2),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(kMyPadding)),
            child: Image.asset(
              'images/background.JPG',
              width: size.width * 0.85,
              height: size.height * 0.25,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Image.asset(
                'images/imdb.png',
                width: size.width * 0.1,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(width: 5),
              Text(
                '4.5',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Text(
                'Name of movie',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Spacer(),
              Icon(
                Icons.play_circle_fill,
                color: Colors.red,
              )
            ],
          )
        ],
      ),
    );
  }
}
