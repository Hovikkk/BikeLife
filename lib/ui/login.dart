import 'package:bike_life/base/dynamic_size.dart';
import 'package:bike_life/base/images.dart';
import 'package:bike_life/base/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: body(),
        bottomNavigationBar: bottomBar(),
      ),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Container(
        width: width,
        height: height,
        color: Color(0xffAED400),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 20,
                child: Center(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: DynamicSize.size(screenWidth: width, size: 150),
                    child: Image(
                      image: AssetImage(AppImages.bikeLifeLogo),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 30,
                child: Container(
                    width: DynamicSize.size(screenWidth: width, size: 100),
                    child: Image(image: AssetImage(AppImages.person))),
              ),
              Expanded(
                flex: 50,
                child: Column(
                  children: [
                    Container(
                      width: width * 0.7,
                      height: DynamicSize.size(screenWidth: width, size: 45),
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Color(0xff535A3B)),
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        controller: password,
                        textAlign: TextAlign.center,
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(12, 24, 12, 8),
                          border: InputBorder.none,
                          hintText: 'Գաղտնաբառ',
                          hintStyle: TextStyle(
                            fontSize:
                                DynamicSize.size(screenWidth: width, size: 16),
                            color: Color(0xffD4D4D4),
                          ),
                        ),
                      ),
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      child: Container(
                        width: width * 0.7,
                        height: DynamicSize.size(screenWidth: width, size: 45),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            'Մուտք',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: DynamicSize.size(
                                    screenWidth: width, size: 16)),
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (password.text != "") {
                          FocusScope.of(context).requestFocus(FocusNode());
                          Navigator.pushNamed(context, Routes.services).then((value) => password.text = "");
                        }
                      },
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.symmetric(
                          vertical:
                              DynamicSize.size(screenWidth: width, size: 10)),
                      child: Container(
                        width: width * 0.7,
                        height: DynamicSize.size(screenWidth: width, size: 45),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            'Մուտք գործել այլ օգտագործողով',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: DynamicSize.size(
                                    screenWidth: width, size: 16)),
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      child: Container(
                        width: width * 0.7,
                        height: DynamicSize.size(screenWidth: width, size: 45),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            'Ստեղծել հաշիվ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: DynamicSize.size(
                                    screenWidth: width, size: 16)),
                          ),
                        ),
                      ),
                      onPressed: () {
                         FocusScope.of(context).requestFocus(FocusNode());
                        Navigator.pushNamed(context, Routes.register);
                      },
                    ),
                    CupertinoButton(
                      child: Text(
                        'Մոռացել եք գաղտնաբառը',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize:
                                DynamicSize.size(screenWidth: width, size: 16)),
                      ),
                      onPressed: () {},
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

  Widget bottomBar() {
    return Container(
      color: Color(0xffAED400),
      height: DynamicSize.size(screenWidth: width, size: 70),
      child: Row(
        children: [
          Spacer(),
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: DynamicSize.size(screenWidth: width, size: 20),
                ),
                Text(
                  'Հետ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: DynamicSize.size(screenWidth: width, size: 20)),
                )
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
