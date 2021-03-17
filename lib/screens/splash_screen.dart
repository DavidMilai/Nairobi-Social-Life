import 'package:flutter/material.dart';

import '../routes.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigate() {
    Navigator.pushReplacementNamed(context, RouteConfig.home);
  }

  void initDatabase() async {
    // await db.init();
    // loadData();
    await Future.delayed(Duration(seconds: 1), navigate);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Nairobi Social Life',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
      )),
    );
  }
}
