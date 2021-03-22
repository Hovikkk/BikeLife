import 'package:bike_life/base/dynamic_size.dart';
import 'package:flutter/material.dart';

final double appBarHeight = DynamicSize.size(screenWidth: width, size: 60);
// final double backBtnWidth = DynamicSize.size(screenWidth: width, size: 50);
final double paymentCardWidth = DynamicSize.size(screenWidth: width, size: 70);
final double payCardAndBackBtnHeight = DynamicSize.size(screenWidth: width, size: 50);

EdgeInsets zero = EdgeInsets.zero;

EdgeInsets appBarPadding = EdgeInsets.only(
  bottom: DynamicSize.size(screenWidth: width, size: 70),
);

EdgeInsets sessionEndPadding = EdgeInsets.only(
  left: DynamicSize.size(screenWidth: width, size: 130),
);
EdgeInsets bodyContentPadding = EdgeInsets.symmetric(
  horizontal: DynamicSize.size(screenWidth: width, size: 40),
);

EdgeInsets textFieldPadding = EdgeInsets.only(
  top: DynamicSize.size(screenWidth: width, size: 20),
);

EdgeInsets priceTextPadding = EdgeInsets.only(
  left: DynamicSize.size(screenWidth: width, size: 10),
);

EdgeInsets payButtonPadding = EdgeInsets.only(
  top: DynamicSize.size(screenWidth: width, size: 70),
  bottom: DynamicSize.size(screenWidth: width, size: 15),
);

EdgeInsets paymentCardsContentPadding = EdgeInsets.only(
  bottom: DynamicSize.size(screenWidth: width, size: 10),
);

EdgeInsets paymentCardsPadding = EdgeInsets.symmetric(
  horizontal: DynamicSize.size(screenWidth: width, size: 10),
);

TextStyle sessionEndStyle = TextStyle(
  fontSize: DynamicSize.size(screenWidth: width, size: 8),
  color: Colors.grey,
);

TextStyle labelStyle = TextStyle(
  color: Color(0xffA4A4A4),
  fontSize: DynamicSize.size(screenWidth: width, size: 14),
);

TextStyle textFieldStyle = TextStyle(
  fontSize: DynamicSize.size(screenWidth: width, size: 18),
);

TextStyle hintStyle = TextStyle(color: Color(0xffD8D8D8));

TextStyle priceStyle = TextStyle(
  color: Color(0xff0D6435),
  fontSize: DynamicSize.size(screenWidth: width, size: 16),
  fontWeight: FontWeight.w500,
);

TextStyle paymentStyleText = TextStyle(
  color: Colors.white,
  fontSize: DynamicSize.size(screenWidth: width, size: 18),
);

TextStyle datePickerTextStyle = TextStyle(
  fontSize: DynamicSize.size(screenWidth: width, size: 18),
  color: Color(0xff808080),
);
