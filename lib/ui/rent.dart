import 'package:bike_life/base/dynamic_size.dart';
import 'package:bike_life/base/images.dart';
import 'package:bike_life/base/routes.dart';
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
        padding: EdgeInsets.zero,
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.arrow_back_rounded,
          color: Colors.black,
        ),
      ),
      title: Container(
        padding: EdgeInsets.zero,
        alignment: Alignment.bottomLeft,
        child: Image(
          image: AssetImage(AppImages.bikeLifeLogo),
          width: DynamicSize.size(screenWidth: width, size: 100),
        ),
      ),
      actions: [
        Stack(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                  right: DynamicSize.size(screenWidth: width, size: 20),
                ),
                child: Image(
                  image: AssetImage(AppImages.bike),
                  width: DynamicSize.size(screenWidth: width, size: 52),
                ),
              ),
            ),
            Positioned(
              top: DynamicSize.size(screenWidth: width, size: 3),
              right: DynamicSize.size(screenWidth: width, size: 17),
              child: Container(
                width: DynamicSize.size(screenWidth: width, size: 17),
                height: DynamicSize.size(screenWidth: width, size: 17),
                decoration: BoxDecoration(
                  color: Color(0xffA72214),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize:
                            DynamicSize.size(screenWidth: width, size: 10),
                        fontWeight: FontWeight.bold),
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
        padding: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 150,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: DynamicSize.size(screenWidth: width, size: 10)),
                    child: Text(
                      'Վարձակալություն',
                      style: TextStyle(
                          color: Color(0xffAED400),
                          fontWeight: FontWeight.bold),
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
                padding: EdgeInsets.symmetric(
                    horizontal: DynamicSize.size(screenWidth: width, size: 40)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          bottom:
                              DynamicSize.size(screenWidth: width, size: 40)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          itemBike(AppImages.bikeRent),
                          itemBike(AppImages.bikeRent),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom:
                              DynamicSize.size(screenWidth: width, size: 40)),
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
          width: DynamicSize.size(screenWidth: width, size: 110),
          height: DynamicSize.size(screenWidth: width, size: 80),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageItem),
              ),
              border: Border.all(width: 2, color: Color(0xffAED400)),
              borderRadius: BorderRadius.circular(12)),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 20),
          child: Text(
            'Lorem Ipsum',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Color(0xff575757),
            ),
          ),
        ),
        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.pushNamed(context, Routes.payment);
          },
          child: Container(
            width: DynamicSize.size(screenWidth: width, size: 110),
            height: DynamicSize.size(screenWidth: width, size: 30),
            decoration: BoxDecoration(
                color: Color(0xffA71E13),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
                child: Text(
              'Վարձակալել',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: DynamicSize.size(screenWidth: width, size: 14)),
            )),
          ),
        )
      ],
    );
  }
}
