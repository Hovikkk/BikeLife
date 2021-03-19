import 'package:bike_life/base/dynamic_size.dart';
import 'package:flutter/material.dart';

final double logoWidth = DynamicSize.size(screenWidth: width, size: 95);
final double logoHeight = DynamicSize.size(screenWidth: width, size: 40);
final double textSize = DynamicSize.size(screenWidth: width, size: 18);
final double buttonPaddingSize = DynamicSize.size(screenWidth: width, size: 30);
final double buttonTextSize = DynamicSize.size(screenWidth: width, size: 50);

EdgeInsets buttonPadding = EdgeInsets.only(top: buttonPaddingSize);

TextStyle textStyle = TextStyle(fontSize: textSize);
TextStyle buttonStyle = TextStyle(color: Colors.white);
