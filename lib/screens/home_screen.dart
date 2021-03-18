import 'package:flutter/material.dart';
import 'package:nairobi_social_life/tabs/EventsTab.dart';
import 'package:nairobi_social_life/tabs/movies_tab.dart';
import 'package:nairobi_social_life/widgets/logo_button.dart';

import '../routes.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tab = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(color: Colors.purple, boxShadow: [
                BoxShadow(
                    offset: Offset(-1, 4),
                    blurRadius: 5,
                    color: Colors.pink.withOpacity(0.2)),
              ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteConfig.aboutApp);
                      },
                      icon: Icon(Icons.share_outlined))
                ],
              ),
            ),
            tab == 0 ? MoviesTab() : EventsTab()
          ],
        ),
        bottomNavigationBar: Container(
          height: 65,
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              offset: Offset(0, -8),
              blurRadius: 35,
              color: Colors.pinkAccent.withOpacity(0.2),
            ),
          ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 60,
                  child: LogoButton(
                      onTap: () {
                        setState(() {
                          tab = 0;
                        });
                      },
                      imageLocation: 'images/movies.png')),
              Container(
                  height: 60,
                  child: LogoButton(
                      onTap: () {
                        setState(() {
                          tab = 1;
                        });
                      },
                      imageLocation: 'images/events.png')),
            ],
          ),
        ),
      ),
    );
  }
}
