import 'package:bike_life/base/dynamic_size.dart';
import 'package:bike_life/base/images.dart';
import 'package:bike_life/base/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServicesPage extends StatefulWidget {
  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
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
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          servicesText(),
          servicesIcons(),
          driveCompetentlyText(),
          bottomContent()
        ],
      ),
    );
  }

  Widget servicesText() {
    return Container(
      width: 143,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: DynamicSize.size(screenWidth: width, size: 10)),
            child: Text(
              'Ծառայություններ',
              style: TextStyle(
                  color: Color(0xffAED400), fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            thickness: 4,
            color: Color(0xff83847E),
          ),
        ],
      ),
    );
  }

  Widget servicesIcons() {
    return Expanded(
      flex: 60,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: DynamicSize.size(screenWidth: width, size: 10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  bottom: DynamicSize.size(screenWidth: width, size: 40)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: DynamicSize.size(screenWidth: width, size: 120),
                    height: DynamicSize.size(screenWidth: width, size: 120),
                    child: CupertinoButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.rent);
                      },
                      padding: EdgeInsets.zero,
                      child: Column(
                        children: [
                          Image(
                            width:
                                DynamicSize.size(screenWidth: width, size: 100),
                            height:
                                DynamicSize.size(screenWidth: width, size: 100),
                            image: AssetImage(AppImages.services1),
                          ),
                          Text(
                            'Վարձակալություն',
                            style: TextStyle(
                                fontSize: DynamicSize.size(
                                    screenWidth: width, size: 13),
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: DynamicSize.size(screenWidth: width, size: 120),
                    height: DynamicSize.size(screenWidth: width, size: 120),
                    child: CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      child: Column(
                        children: [
                          Image(
                            width:
                                DynamicSize.size(screenWidth: width, size: 100),
                            height:
                                DynamicSize.size(screenWidth: width, size: 100),
                            image: AssetImage(AppImages.services2),
                          ),
                          Text(
                            'Ուսուցում',
                            style: TextStyle(
                                fontSize: DynamicSize.size(
                                    screenWidth: width, size: 13),
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: DynamicSize.size(screenWidth: width, size: 120),
                    height: DynamicSize.size(screenWidth: width, size: 120),
                    child: CupertinoButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      child: Column(
                        children: [
                          Image(
                            width:
                                DynamicSize.size(screenWidth: width, size: 100),
                            height:
                                DynamicSize.size(screenWidth: width, size: 100),
                            image: AssetImage(AppImages.services3),
                          ),
                          Text(
                            'Արշավներ',
                            style: TextStyle(
                                fontSize: DynamicSize.size(
                                    screenWidth: width, size: 13),
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  child: Container(
                    width: DynamicSize.size(screenWidth: width, size: 120),
                    height: DynamicSize.size(screenWidth: width, size: 100),
                    child: Image(
                      width: DynamicSize.size(screenWidth: width, size: 100),
                      height: DynamicSize.size(screenWidth: width, size: 100),
                      image: AssetImage(AppImages.services4),
                    ),
                  ),
                ),
                CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  child: Container(
                    width: DynamicSize.size(screenWidth: width, size: 120),
                    height: DynamicSize.size(screenWidth: width, size: 100),
                    child: Image(
                      width: DynamicSize.size(screenWidth: width, size: 100),
                      height: DynamicSize.size(screenWidth: width, size: 100),
                      image: AssetImage(AppImages.services5),
                    ),
                  ),
                ),
                CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  child: Container(
                    width: DynamicSize.size(screenWidth: width, size: 120),
                    height: DynamicSize.size(screenWidth: width, size: 100),
                    child: Image(
                      width: DynamicSize.size(screenWidth: width, size: 100),
                      height: DynamicSize.size(screenWidth: width, size: 100),
                      image: AssetImage(AppImages.services6),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: DynamicSize.size(screenWidth: width, size: 120),
                  child: Center(
                    child: CupertinoButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      minSize: 0,
                      child: Text(
                        'Վերանորոգում',
                        style: TextStyle(
                            fontSize:
                                DynamicSize.size(screenWidth: width, size: 13),
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  minSize: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ապահով',
                        style: TextStyle(
                            fontSize:
                                DynamicSize.size(screenWidth: width, size: 13),
                            color: Colors.black),
                      ),
                      Text(
                        'կայանում',
                        style: TextStyle(
                            fontSize:
                                DynamicSize.size(screenWidth: width, size: 13),
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
                Container(
                  width: DynamicSize.size(screenWidth: width, size: 120),
                  child: CupertinoButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    minSize: 0,
                    child: Text(
                      'Միջոցառումներ',
                      style: TextStyle(
                          fontSize:
                              DynamicSize.size(screenWidth: width, size: 13),
                          color: Colors.black),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget driveCompetentlyText() {
    return Container(
      width: 190,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: DynamicSize.size(screenWidth: width, size: 10)),
            child: Text(
              'Ինչպես գրագետ վարել',
              style: TextStyle(
                  color: Color(0xffAED400), fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            thickness: 4,
            color: Color(0xff83847E),
          ),
        ],
      ),
    );
  }

  Widget bottomContent() {
    return Expanded(
      flex: 40,
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Container(
          alignment: Alignment.topCenter,
          child: Stack(
            children: [
              Image(
                image: AssetImage(AppImages.bikeBottom),
              ),
              Positioned(
                top: DynamicSize.size(screenWidth: width, size: 10),
                right: DynamicSize.size(screenWidth: width, size: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('ՔԱՅԼ 1',
                        style: TextStyle(
                          fontSize:
                              DynamicSize.size(screenWidth: width, size: 18),
                          fontWeight: FontWeight.bold,
                        )),
                    Padding(
                      padding: EdgeInsets.only(
                          top: DynamicSize.size(screenWidth: width, size: 25)),
                      child: Text(
                        'Սաղավարտով երթևեկելն',
                        style: TextStyle(
                            fontSize:
                                DynamicSize.size(screenWidth: width, size: 13),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(
                      'ավելի ապահով է',
                      style: TextStyle(
                          fontSize:
                              DynamicSize.size(screenWidth: width, size: 13),
                          fontWeight: FontWeight.w600,
                          color: Color(0xffAED400)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
