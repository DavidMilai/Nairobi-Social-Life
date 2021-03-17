import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigate() {
    // Navigator.pushReplacementNamed(context, RouteConfig.login);
  }

  void initDatabase() async {
    // await db.init();
    // loadData();
    await Future.delayed(Duration(seconds: 1), navigate);
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
