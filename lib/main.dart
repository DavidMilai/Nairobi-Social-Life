import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nairobi_social_life/routes.dart';

import 'config.dart';

void main() {
  runApp(MyApp());
}

//TODO: implement in app review

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: kDefaultColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light));
    return MaterialApp(
      title: Config.appName,
      theme: Config.theme,
      initialRoute: RouteConfig.defaultRoute,
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
