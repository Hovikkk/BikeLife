import 'package:bike_life/ui/home.dart';
import 'package:bike_life/ui/login.dart';
import 'package:bike_life/ui/register.dart';
import 'package:bike_life/ui/services.dart';
import 'package:bike_life/ui/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const root = '/';
  static const home = '/home';
  static const login = '/login';
  static const register = '/register';
  static const services = '/services';

  static MaterialPageRoute onGenerateRoute(RouteSettings settings) {
    var routes = <String, WidgetBuilder>{
      Routes.root: (context) => SplashScreen(),
      Routes.home: (context) => HomePage(),
      Routes.login: (context) => LoginPage(),
      Routes.register: (context) => RegisterPage(),
      Routes.services: (context) => ServicesPage(),
    };
    WidgetBuilder builder = routes[settings.name];
    return MaterialPageRoute(builder: (ctx) => builder(ctx));
  }
}