import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../config.dart';

class AboutAppScreen extends StatefulWidget {
  @override
  _AboutAppScreenState createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.JPG"),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  IconButton(
                      onPressed: () {
                        // Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                  Spacer(),
                  Center(
                    child: Container(
                      height: size.height * 0.3,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(kMyPadding),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 3),
                              blurRadius: kMyPadding * 0.3,
                              color: Colors.black.withOpacity(0.1),
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            )),
      ),
    );
  }
}
