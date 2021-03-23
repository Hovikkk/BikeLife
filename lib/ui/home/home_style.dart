import 'package:bike_life/base/dynamic_size.dart';
import 'package:flutter/material.dart';

final double buttonPreferredSizeHeight =
    DynamicSize.size(screenWidth: width, size: 40);
final double loremSize = DynamicSize.size(screenWidth: width, size: 18);
final double buttonTextSize = DynamicSize.size(screenWidth: width, size: 16);
final double horizonalLoremPadding =
    DynamicSize.size(screenWidth: width, size: 15);
final double loremTextSize = DynamicSize.size(screenWidth: width, size: 14);
final double bikeIconWidth = DynamicSize.size(screenWidth: width, size: 70);
final double dividerHeight = DynamicSize.size(screenWidth: width, size: 4);
final double logoWidth = DynamicSize.size(screenWidth: width, size: 100);
final double actionsIconSize = DynamicSize.size(screenWidth: width, size: 20);

EdgeInsets zero = EdgeInsets.zero;
EdgeInsets paddingBottonBottom = EdgeInsets.only(
  bottom: buttonPreferredSizeHeight,
);
EdgeInsets loremBlockPadding = EdgeInsets.only(
  left: horizonalLoremPadding,
  right: horizonalLoremPadding,
  top: buttonPreferredSizeHeight,
);
EdgeInsets loremTextPadding = EdgeInsets.only(top: 5);
EdgeInsets appBarTitlePadding = EdgeInsets.only(
  left: DynamicSize.size(screenWidth: width, size: 10),
);
EdgeInsets appBarActionsPadding = EdgeInsets.only(
  right: DynamicSize.size(screenWidth: width, size: 10),
);

TextStyle buttonText = TextStyle(
  color: Colors.white,
  fontSize: buttonTextSize,
  fontWeight: FontWeight.w700,
);

TextStyle lorem = TextStyle(
  color: Color(0xffAED400),
  fontSize: loremSize,
  fontWeight: FontWeight.w700,
);

TextStyle loremText = TextStyle(
  fontSize: loremTextSize,
);
