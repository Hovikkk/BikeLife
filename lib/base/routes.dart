import 'package:bike_life/ui/home.dart';
import 'package:bike_life/ui/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const root = '/';
  static const login = '/login';

  static MaterialPageRoute onGenerateRoute(RouteSettings settings) {
    var routes = <String, WidgetBuilder>{
      Routes.root: (context) => SplashScreen(),
      Routes.login: (context) => HomePage(),
    };
    WidgetBuilder builder = routes[settings.name];
    return MaterialPageRoute(builder: (ctx) => builder(ctx));
  }
}