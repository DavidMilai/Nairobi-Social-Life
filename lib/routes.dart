import 'package:nairobi_social_life/screens/about_app_screen.dart';
import 'package:nairobi_social_life/screens/home_screen.dart';

import 'screens/splash_screen.dart';

var routes = {
  RouteConfig.defaultRoute: (context) => SplashScreen(),
  RouteConfig.aboutApp: (context) => AboutAppScreen(),
  RouteConfig.home: (context) => HomeScreen(),
};

class RouteConfig {
  static final defaultRoute = "/";
  static final aboutApp = "aboutApp";
  static final home = "home";
}
