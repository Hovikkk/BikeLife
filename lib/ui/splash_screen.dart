import 'package:bike_life/base/dynamic_size.dart';
import 'package:bike_life/base/images.dart';
import 'package:bike_life/base/routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   Future.delayed(Duration(seconds: 2), () {
  //     Navigator.pushNamed(context, Routes.login);
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    timer();
    return Scaffold(
      body: body(),
    );
  }

  Widget body() {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.splash_screen),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Image(image: AssetImage(AppImages.splashBike))
      ),
    );
  }

  Future<void> timer() async {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(
          context, Routes.home, (route) => false);
    });
  }
}
