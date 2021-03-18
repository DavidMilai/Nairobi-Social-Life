import 'package:flutter/material.dart';
import 'package:nairobi_social_life/config.dart';
import 'package:nairobi_social_life/widgets/day_selector.dart';

class MoviesTab extends StatefulWidget {
  @override
  _MoviesTabState createState() => _MoviesTabState();
}

class _MoviesTabState extends State<MoviesTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              height: size.height * 0.06,
              child: TabBar(
                tabs: [
                  Text(
                    'Now showing',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Text(
                    'Upcoming',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    children: [
                      SizedBox(height: 5),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: kMyPadding / 2),
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
                  ),
                  Center(
                      child: Text(
                    "1",
                    style: TextStyle(fontSize: 40),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
