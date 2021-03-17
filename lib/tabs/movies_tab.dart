import 'package:flutter/material.dart';

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
                    Center(
                        child: Text(
                      "0",
                      style: TextStyle(fontSize: 40),
                    )),
                    Center(
                        child: Text(
                      "1",
                      style: TextStyle(fontSize: 40),
                    )),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
