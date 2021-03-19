import 'package:bike_life/base/dynamic_size.dart';
import 'package:bike_life/base/images.dart';
import 'package:bike_life/base/routes.dart';
import 'package:bike_life/ui/home/home_style.dart';
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
            preferredSize:
                Size.fromHeight(buttonPreferredSizeHeight),
            child: appBar(),
          ),
          body: body(),
        ),
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
            padding: paddingBottonBottom,
            child: CupertinoButton(
              padding: zero,
              onPressed: () {
                Navigator.pushNamed(context, Routes.login);
              },
              child: Container(
                width: width * 0.6,
                height: buttonPreferredSizeHeight,
                decoration: BoxDecoration(
                  color: Color(0xffAED400),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    'Վարձակալել հեծանիվ',
                    style: buttonText,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: loremBlockPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lorem Ipsum',
                    style: lorem,
                  ),
                  Image(
                    image: AssetImage(AppImages.bike),
                    width: bikeIconWidth,
                  )
                ],
              ),
              Divider(
                height: dividerHeight,
                thickness: dividerHeight,
              ),
              Padding(
                padding: loremTextPadding,
                child: Container(
                  width: width * 0.75,
                  child: Text(
                    'Lorem Ipsum-ը տպագրության և տպագրական արդյունաբերության համար նախատեսված մոդելային տեքստ է: Սկսած 1500-ականներից` Lorem Ipsum-ը հանդիսացել է տպագրական',
                    style: loremText
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
              padding: zero,
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
