import 'package:bike_life/base/routes.dart';
import 'package:bike_life/ui/home.dart';
import 'package:bike_life/ui/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),

    onGenerateRoute: Routes.onGenerateRoute,
      // routes: {
      //   // When navigating to the "/" route, build the FirstScreen widget.
      //   '/splash': (context) => SplashScreen(),
      //   // When navigating to the "/second" route, build the SecondScreen widget.
      //   '/home': (context) => HomePage(),
      // },
    );
  }
}
