import 'package:bike_life/base/dynamic_size.dart';
import 'package:bike_life/base/images.dart';
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
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xffECECEC),
            leading: Icon(
              Icons.menu,
              color: Colors.black,
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
                              fontSize: DynamicSize.size(
                                  screenWidth: width, size: 10),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          body: body(),
        ),
      ),
    );
  }

  Widget body() {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: DynamicSize.size(screenWidth: width, size: 10)),
            child: Text('Ծառայություններ', style: TextStyle(color: Color(0xffAED400), fontWeight: FontWeight.bold),),
          ),
          Divider(
            thickness: 4,
            endIndent: width*DynamicSize.size(screenWidth: width, size: 0.64),
            color: Color(0xff83847E),
          )
        ],
      ),
    );
  }
}
