import 'package:bike_life/base/dynamic_size.dart';
import 'package:bike_life/base/images.dart';
import 'package:bike_life/base/routes.dart';
import 'package:bike_life/ui/rent/rent_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RentPage extends StatefulWidget {
  @override
  _RentPageState createState() => _RentPageState();
}

class _RentPageState extends State<RentPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffAED400),
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          appBar: appBar(),
          body: body(),
        ),
      ),
    );
  }

  Widget appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Color(0xffECECEC),
      leading: CupertinoButton(
        padding: zero,
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.arrow_back_rounded,
          color: Colors.black,
        ),
      ),
      title: Container(
        padding: zero,
        alignment: Alignment.bottomLeft,
        child: Image(
          image: AssetImage(AppImages.bikeLifeLogo),
          width: logoSize,
        ),
      ),
      actions: [
        Stack(
          children: [
            Center(
              child: Padding(
                padding: bikeIconPadding,
                child: Image(
                  image: AssetImage(AppImages.bike),
                  width: bikeIconWidth,
                ),
              ),
            ),
            Positioned(
              top: redIconTopPosition,
              right: redIconSize,
              child: Container(
                width: redIconSize,
                height: redIconSize,
                decoration: BoxDecoration(
                  color: Color(0xffA72214),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    '1',
                    style: redIconStyle,
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget body() {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.rentBg),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: bottomContentPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: rentTextWidth,
              child: Column(
                children: [
                  Padding(
                    padding: rentTextPadding,
                    child: Text(
                      'Վարձակալություն',
                      style: rentTextStyle,
                    ),
                  ),
                  Divider(
                    thickness: 4,
                    color: Color(0xff83847E),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: contentButtonsPadding,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: buttonIconsBottomPadding,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          itemBike(AppImages.bikeRent),
                          itemBike(AppImages.bikeRent),
                        ],
                      ),
                    ),
                    Padding(
                      padding: buttonIconsBottomPadding,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          itemBike(AppImages.bikeRent),
                          itemBike(AppImages.bikeRent1)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget itemBike(String bikeRent) {
    String imageItem = bikeRent;
    return Column(
      children: [
        Container(
          width: itemBikeWidth,
          height: itemBikeHeight,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageItem),
              ),
              border: Border.all(width: 2, color: Color(0xffAED400)),
              borderRadius: BorderRadius.circular(12)),
        ),
        Padding(
          padding: buttonsText,
          child: Text(
            'Lorem Ipsum',
            style: buttonsTextStyle,
          ),
        ),
        CupertinoButton(
          padding: zero,
          onPressed: () {
            Navigator.pushNamed(context, Routes.payment);
          },
          child: Container(
            width: itemBikeWidth,
            height: rentButtonsHeight,
            decoration: BoxDecoration(
                color: Color(0xffA71E13),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
                child: Text(
              'Վարձակալել',
              style: rentButtonsTextStyle,
            )),
          ),
        )
      ],
    );
  }
}
