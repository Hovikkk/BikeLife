import 'package:bike_life/ui/home/home.dart';
import 'package:bike_life/ui/login/login.dart';
import 'package:bike_life/ui/payment/payment.dart';
import 'package:bike_life/ui/register/register.dart';
import 'package:bike_life/ui/rent/rent.dart';
import 'package:bike_life/ui/servicesPage/services.dart';
import 'package:bike_life/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const root = '/';
  static const home = '/home';
  static const login = '/login';
  static const register = '/register';
  static const services = '/services';
  static const rent = '/rent';
  static const payment = '/payment';

  static MaterialPageRoute onGenerateRoute(RouteSettings settings) {
    var routes = <String, WidgetBuilder>{
      Routes.root: (context) => SplashScreen(),
      Routes.home: (context) => HomePage(),
      Routes.login: (context) => LoginPage(),
      Routes.register: (context) => RegisterPage(),
      Routes.services: (context) => ServicesPage(),
      Routes.rent: (context) => RentPage(),
      Routes.payment: (context) => PaymentPage(),
    };
    WidgetBuilder builder = routes[settings.name];
    return MaterialPageRoute(builder: (ctx) => builder(ctx));
  }
}