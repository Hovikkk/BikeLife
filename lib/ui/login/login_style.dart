import 'package:bike_life/base/dynamic_size.dart';
import 'package:flutter/material.dart';

final double bikeLifeLogoWidth =
    DynamicSize.size(screenWidth: width, size: 150);
final double userIcon = DynamicSize.size(screenWidth: width, size: 100);
final double buttonHeight = DynamicSize.size(screenWidth: width, size: 45);
final double buttonSize = DynamicSize.size(screenWidth: width, size: 16);
final double backButtonSize = DynamicSize.size(screenWidth: width, size: 20);
final double bottomBarHeight = DynamicSize.size(screenWidth: width, size: 70);

EdgeInsets zero = EdgeInsets.zero;
EdgeInsets marginTextField = EdgeInsets.only(bottom: 10);
EdgeInsets cupertinoButtonPadding = EdgeInsets.symmetric(
  vertical: DynamicSize.size(screenWidth: width, size: 10),
);

BoxDecoration textFieldPassword = BoxDecoration(
  border: Border.all(width: 2, color: Color(0xff535A3B)),
  borderRadius: BorderRadius.circular(30),
  color: Colors.white,
);

TextStyle hintStyle = TextStyle(
  fontSize: buttonSize,
  color: Color(0xffD4D4D4),
);

TextStyle buttonStyle = TextStyle(
  color: Colors.white,
  fontSize: buttonSize,
);

TextStyle forgotPass = TextStyle(
  color: Colors.white,
  fontSize: buttonSize,
);

TextStyle backStyle = TextStyle(
  color: Colors.white,
  fontSize: backButtonSize,
);
