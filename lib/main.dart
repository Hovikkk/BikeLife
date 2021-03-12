import 'package:bike_life/base/routes.dart';
import 'package:bike_life/ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
        appBarTheme: Theme.of(context)
            .appBarTheme
            .copyWith(brightness: Brightness.light),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),

      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
