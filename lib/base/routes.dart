import 'package:bike_life/ui/home.dart';
import 'package:bike_life/ui/login.dart';
import 'package:bike_life/ui/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const root = '/';
  static const home = '/home';
  static const login = '/login';

  static MaterialPageRoute onGenerateRoute(RouteSettings settings) {
    var routes = <String, WidgetBuilder>{
      Routes.root: (context) => SplashScreen(),
      Routes.home: (context) => HomePage(),
      Routes.login: (context) => LoginPage(),
    };
    WidgetBuilder builder = routes[settings.name];
    return MaterialPageRoute(builder: (ctx) => builder(ctx));
  }
}