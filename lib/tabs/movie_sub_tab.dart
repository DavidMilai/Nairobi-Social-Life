import 'package:flutter/material.dart';
import 'package:nairobi_social_life/widgets/day_selector.dart';
import 'package:nairobi_social_life/widgets/movie_cart.dart';

import '../config.dart';

class MovieSubTab extends StatelessWidget {
  const MovieSubTab({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kMyPadding / 2),
          child: Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      DaySelector(
                        weekDay: 'Mon',
                        day: '06',
                      ),
                      DaySelector(
                        weekDay: 'Teu',
                        day: '07',
                      ),
                      DaySelector(
                        weekDay: 'Wed',
                        day: '08',
                      ),
                      DaySelector(
                        weekDay: 'Thu',
                        day: '09',
                      ),
                      DaySelector(
                        weekDay: 'Fri',
                        day: '10',
                      ),
                      DaySelector(
                        weekDay: 'Sat',
                        day: '11',
                      ),
                      DaySelector(
                        weekDay: 'Sun',
                        day: '12',
                      ),
                      DaySelector(
                        weekDay: 'Mon',
                        day: '13',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(kMyPadding / 5),
                child: Icon(
                  Icons.calendar_today_outlined,
                  size: 30,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 10),
        MovieCard(size: size),
        SizedBox(height: 10),
        MovieCard(size: size)
      ],
    );
  }
}
