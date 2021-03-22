import 'package:bike_life/base/dynamic_size.dart';
import 'package:bike_life/base/images.dart';
import 'package:bike_life/base/routes.dart';
import 'package:bike_life/ui/servicesPage/services_style.dart';
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
        padding: zero,
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.arrow_back_rounded,
          color: Colors.black,
          size: DynamicSize.size(screenWidth: width, size: 18),
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
    return Padding(
      padding: bodyPadding,
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
      width: DynamicSize.size(screenWidth: width, size: 150),
      child: Column(
        children: [
          Padding(
            padding: servicesTextPadding,
            child: Text(
              'Ծառայություններ',
              style: servicesStyle,
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
        padding: contentButtonsPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: contentButtonsRowPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: containerButtonSize,
                    height: containerButtonSize,
                    child: CupertinoButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.rent);
                      },
                      padding: zero,
                      child: Column(
                        children: [
                          Image(
                            width: logoSize,
                            height: logoSize,
                            image: AssetImage(AppImages.services1),
                          ),
                          Text(
                            'Վարձակալություն',
                            style: buttonsStyle,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: containerButtonSize,
                    height: containerButtonSize,
                    child: CupertinoButton(
                      padding: zero,
                      onPressed: () {},
                      child: Column(
                        children: [
                          Image(
                            width: logoSize,
                            height: logoSize,
                            image: AssetImage(AppImages.services2),
                          ),
                          Text(
                            'Ուսուցում',
                            style: buttonsStyle,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: containerButtonSize,
                    height: containerButtonSize,
                    child: CupertinoButton(
                      onPressed: () {},
                      padding: zero,
                      child: Column(
                        children: [
                          Image(
                            width: logoSize,
                            height: logoSize,
                            image: AssetImage(AppImages.services3),
                          ),
                          Text(
                            'Արշավներ',
                            style: buttonsStyle,
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
                  padding: zero,
                  child: Container(
                    width: containerButtonSize,
                    height: logoSize,
                    child: Image(
                      width: logoSize,
                      height: logoSize,
                      image: AssetImage(AppImages.services4),
                    ),
                  ),
                ),
                CupertinoButton(
                  onPressed: () {},
                  padding: zero,
                  child: Container(
                    width: containerButtonSize,
                    height: logoSize,
                    child: Image(
                      width: logoSize,
                      height: logoSize,
                      image: AssetImage(AppImages.services5),
                    ),
                  ),
                ),
                CupertinoButton(
                  onPressed: () {},
                  padding: zero,
                  child: Container(
                    width: containerButtonSize,
                    height: logoSize,
                    child: Image(
                      width: logoSize,
                      height: logoSize,
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
                  width: containerButtonSize,
                  child: Center(
                    child: CupertinoButton(
                      onPressed: () {},
                      padding: zero,
                      minSize: 0,
                      child: Text(
                        'Վերանորոգում',
                        style: buttonsStyle,
                      ),
                    ),
                  ),
                ),
                CupertinoButton(
                  onPressed: () {},
                  padding: zero,
                  minSize: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ապահով',
                        style: buttonsStyle,
                      ),
                      Text(
                        'կայանում',
                        style: buttonsStyle,
                      )
                    ],
                  ),
                ),
                Container(
                  width: containerButtonSize,
                  child: CupertinoButton(
                    onPressed: () {},
                    padding: zero,
                    minSize: 0,
                    child: Text(
                      'Միջոցառումներ',
                      style: buttonsStyle,
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
      width: DynamicSize.size(screenWidth: width, size: 200),
      child: Column(
        children: [
          Padding(
            padding: driveCompetentlyPadding,
            child: Text(
              'Ինչպես գրագետ վարել',
              style: driveCompetentlyStyle,
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
        padding: bottomContentPadding,
        child: Container(
          alignment: Alignment.topCenter,
          child: Stack(
            children: [
              Image(
                image: AssetImage(AppImages.bikeBottom),
              ),
              Positioned(
                top: stepTop,
                right: stepRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'ՔԱՅԼ 1',
                      style: stepStyle,
                    ),
                    Padding(
                      padding: walkingHelmet,
                      child: Text(
                        'Սաղավարտով երթևեկելն',
                        style: walkingHelmetStyle,
                      ),
                    ),
                    Text(
                      'ավելի ապահով է',
                      style: isSaferStyle,
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
