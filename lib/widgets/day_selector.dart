import 'package:flutter/material.dart';

import '../config.dart';

class DaySelector extends StatelessWidget {
  const DaySelector({this.weekDay, this.day});
  final String weekDay, day;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 40,
      margin: EdgeInsets.symmetric(horizontal: kMyPadding / 5),
      decoration: BoxDecoration(
          color: Colors.orange,
          border: Border.all(
            color: Colors.red[500],
          ),
          borderRadius: BorderRadius.all(Radius.circular(kMyPadding))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(weekDay, style: TextStyle(color: Colors.white)),
          Text(day,
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
