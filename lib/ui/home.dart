import 'package:bike_life/base/dynamic_size.dart';
import 'package:bike_life/base/images.dart';
import 'package:bike_life/base/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffAED400),
      child: SafeArea(
        bottom: false,
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(
                  DynamicSize.size(screenWidth: width, size: 50)),
              child: appBar(),
            ),
            body: body()),
      ),
    );
  }

  Widget body() {
    return Column(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          width: width,
          height: height * 0.55,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.bikeBg),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
                bottom: DynamicSize.size(screenWidth: width, size: 50)),
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.pushNamed(context, Routes.login);
              },
              child: Container(
                width: width * 0.6,
                height: DynamicSize.size(screenWidth: width, size: 50),
                decoration: BoxDecoration(
                  color: Color(0xffAED400),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    'Վարձակալել հեծանիվ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize:
                            DynamicSize.size(screenWidth: width, size: 16),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: DynamicSize.size(screenWidth: width, size: 15),
            right: DynamicSize.size(screenWidth: width, size: 15),
            top: DynamicSize.size(screenWidth: width, size: 50),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lorem Ipsum',
                    style: TextStyle(
                        color: Color(0xffAED400),
                        fontSize:
                            DynamicSize.size(screenWidth: width, size: 18),
                        fontWeight: FontWeight.w700),
                  ),
                  Image(
                    image: AssetImage(AppImages.bike),
                    width: DynamicSize.size(screenWidth: width, size: 70),
                  )
                ],
              ),
              Divider(
                height: DynamicSize.size(screenWidth: width, size: 4),
                thickness: DynamicSize.size(screenWidth: width, size: 4),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Container(
                  width: width * 0.75,
                  child: Text(
                    'Lorem Ipsum-ը տպագրության և տպագրական արդյունաբերության համար նախատեսված մոդելային տեքստ է: Սկսած 1500-ականներից` Lorem Ipsum-ը հանդիսացել է տպագրական',
                    style: TextStyle(
                        fontSize:
                            DynamicSize.size(screenWidth: width, size: 14)),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget appBar() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      backgroundColor: Color(0xffECECEC),
      title: Image(
        image: AssetImage(AppImages.bikeLifeLogo),
        width: 100,
      ),
      actions: [
        Row(
          children: [
            Image(
              image: AssetImage(AppImages.personIcon),
              width: DynamicSize.size(screenWidth: width, size: 20),
              height: DynamicSize.size(screenWidth: width, size: 20),
            ),
            CupertinoButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.login);
              },
              child: Icon(
                Icons.more_vert,
                color: Color(0xff606060),
              ),
            )
          ],
        )
      ],
    );
  }
}
