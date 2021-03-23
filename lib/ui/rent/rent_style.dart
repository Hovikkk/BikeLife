import 'package:bike_life/base/dynamic_size.dart';
import 'package:flutter/material.dart';

final double logoSize = DynamicSize.size(screenWidth: width, size: 100);
final double bikeIconWidth = DynamicSize.size(screenWidth: width, size: 52);
final double redIconSize = DynamicSize.size(screenWidth: width, size: 17);
final double redIconTopPosition = DynamicSize.size(screenWidth: width, size: 3);
final double redIconTextSize = DynamicSize.size(screenWidth: width, size: 10);
final double itemBikeWidth = DynamicSize.size(screenWidth: width, size: 110);
final double itemBikeHeight = DynamicSize.size(screenWidth: width, size: 80);
final double rentButtonsHeight = DynamicSize.size(screenWidth: width, size: 30);
final double rentTextWidth = DynamicSize.size(screenWidth: width, size: 160);
final double backBtnSize = DynamicSize.size(screenWidth: width, size: 18);

EdgeInsets zero = EdgeInsets.zero;

EdgeInsets bikeIconPadding = EdgeInsets.only(
  right: DynamicSize.size(screenWidth: width, size: 20),
);

EdgeInsets bottomContentPadding = EdgeInsets.only(top: 20);

EdgeInsets rentTextPadding = EdgeInsets.only(
  left: DynamicSize.size(screenWidth: width, size: 10),
);

EdgeInsets contentButtonsPadding = EdgeInsets.symmetric(
  horizontal: DynamicSize.size(screenWidth: width, size: 40),
);

EdgeInsets buttonIconsBottomPadding = EdgeInsets.only(
  bottom: DynamicSize.size(screenWidth: width, size: 40),
);

EdgeInsets buttonsText = EdgeInsets.only(top: 10, bottom: 20);

TextStyle redIconStyle = TextStyle(
  color: Colors.white,
  fontSize: redIconTextSize,
  fontWeight: FontWeight.bold,
);

TextStyle rentTextStyle = TextStyle(
  color: Color(0xffAED400),
  fontWeight: FontWeight.bold,
  fontSize: DynamicSize.size(screenWidth: width, size: 15)
);

TextStyle buttonsTextStyle = TextStyle(
  fontWeight: FontWeight.w700,
  color: Color(0xff575757),
  fontSize: DynamicSize.size(screenWidth: width, size: 15)
);

TextStyle rentButtonsTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w700,
  fontSize: DynamicSize.size(screenWidth: width, size: 14),
);
