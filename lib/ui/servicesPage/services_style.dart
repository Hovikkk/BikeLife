import 'package:bike_life/base/dynamic_size.dart';
import 'package:flutter/material.dart';

final double logoSize = DynamicSize.size(screenWidth: width, size: 100);
final double bikeIconWidth = DynamicSize.size(screenWidth: width, size: 52);
final double redIconSize = DynamicSize.size(screenWidth: width, size: 17);
final double redIconTopPosition = DynamicSize.size(screenWidth: width, size: 3);
final double redIconTextSize = DynamicSize.size(screenWidth: width, size: 10);
final double containerButtonSize = DynamicSize.size(screenWidth: width, size: 120);
final double stepTop = DynamicSize.size(screenWidth: width, size: 10);
final double stepRight = DynamicSize.size(screenWidth: width, size: 7);
final double servicesTextWidth = DynamicSize.size(screenWidth: width, size: 150);
final double driveCompetentlyTextWidth = DynamicSize.size(screenWidth: width, size: 200);
final double backBtnSize = DynamicSize.size(screenWidth: width, size: 18);

EdgeInsets zero = EdgeInsets.zero;

EdgeInsets bodyPadding = EdgeInsets.only(top: 20);

EdgeInsets bikeIconPadding = EdgeInsets.only(
  right: DynamicSize.size(screenWidth: width, size: 20),
);

EdgeInsets servicesTextPadding = EdgeInsets.only(
  left: DynamicSize.size(screenWidth: width, size: 10),
);

EdgeInsets contentButtonsPadding = EdgeInsets.symmetric(
  horizontal: DynamicSize.size(screenWidth: width, size: 10),
);

EdgeInsets contentButtonsRowPadding = EdgeInsets.only(
  bottom: DynamicSize.size(screenWidth: width, size: 40),
);

EdgeInsets driveCompetentlyPadding = EdgeInsets.only(
  left: DynamicSize.size(screenWidth: width, size: 10),
);

EdgeInsets bottomContentPadding = EdgeInsets.only(top: 20);

EdgeInsets walkingHelmet = EdgeInsets.only(
  top: DynamicSize.size(screenWidth: width, size: 25),
);

TextStyle redIconStyle = TextStyle(
  color: Colors.white,
  fontSize: redIconTextSize,
  fontWeight: FontWeight.bold,
);

TextStyle servicesStyle = TextStyle(
  color: Color(0xffAED400),
  fontWeight: FontWeight.bold,
  fontSize: DynamicSize.size(screenWidth: width, size: 15)
);

TextStyle buttonsStyle = TextStyle(
  fontSize: DynamicSize.size(screenWidth: width, size: 13),
  color: Colors.black,
);

TextStyle driveCompetentlyStyle = TextStyle(
  color: Color(0xffAED400),
  fontWeight: FontWeight.bold,
  fontSize: DynamicSize.size(screenWidth: width, size: 15)
);

TextStyle stepStyle = TextStyle(
  fontSize: DynamicSize.size(screenWidth: width, size: 18),
  fontWeight: FontWeight.bold,
);

TextStyle walkingHelmetStyle = TextStyle(
  fontSize: DynamicSize.size(screenWidth: width, size: 13),
  fontWeight: FontWeight.w500,
);

TextStyle isSaferStyle = TextStyle(
  fontSize: DynamicSize.size(screenWidth: width, size: 13),
  fontWeight: FontWeight.w600,
  color: Color(0xffAED400),
);
