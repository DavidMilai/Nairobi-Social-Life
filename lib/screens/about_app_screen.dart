import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nairobi_social_life/widgets/about_user.dart';
import 'package:nairobi_social_life/widgets/logo_button.dart';
import 'package:url_launcher/url_launcher.dart';

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
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                  Spacer(),
                  Center(
                    child: Container(
                      height: size.height * 0.4,
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
                      child: Padding(
                        padding: EdgeInsets.only(left: kMyPadding / 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AboutUser(
                              department: 'Developer',
                              name: 'David Milai',
                              role: 'Software Developer',
                              socials: [
                                LogoButton(
                                  onTap: () async {
                                    await canLaunch(
                                            'https://www.linkedin.com/in/david-milai/')
                                        ? await launch(
                                            'https://www.linkedin.com/in/david-milai/')
                                        : throw 'Could not launch Linkedin';
                                  },
                                  imageLocation: 'images/linkedin.png',
                                ),
                                LogoButton(
                                  onTap: () async {
                                    await canLaunch(
                                            'https://github.com/DavidMilai')
                                        ? await launch(
                                            'https://github.com/DavidMilai')
                                        : throw 'Could not launch https://github.com/DavidMilai';
                                  },
                                  imageLocation: 'images/GitHub.png',
                                ),
                                LogoButton(
                                  onTap: () async {
                                    await canLaunch(
                                            'https://twitter.com/david_milai')
                                        ? await launch(
                                            'https://twitter.com/david_milai')
                                        : throw 'Could not launch hDavidMilai';
                                  },
                                  imageLocation: 'images/Twitter light.png',
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            AboutUser(
                              department: 'Designer',
                              name: 'Preston Odep',
                              role: 'Graphic Designer',
                              socials: [
                                LogoButton(
                                  onTap: () async {
                                    await canLaunch(
                                            'https://www.linkedin.com/in/preston-odep/')
                                        ? await launch(
                                            'https://www.linkedin.com/in/preston-odep/')
                                        : throw 'Could not launch Linkedin';
                                  },
                                  imageLocation: 'images/linkedin.png',
                                ),
                                LogoButton(
                                  onTap: () async {
                                    await canLaunch(
                                            'https://www.instagram.com/whatispresdoing')
                                        ? await launch(
                                            'https://www.instagram.com/whatispresdoing')
                                        : throw 'Could not launch https://github.com/DavidMilai';
                                  },
                                  imageLocation: 'images/Instagram light.png',
                                ),
                                LogoButton(
                                  onTap: () async {
                                    await canLaunch(
                                            'https://twitter.com/whatispresdoing')
                                        ? await launch(
                                            'https://twitter.com/whatispresdoing')
                                        : throw 'Could not launch hDavidMilai';
                                  },
                                  imageLocation: 'images/Twitter light.png',
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
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
