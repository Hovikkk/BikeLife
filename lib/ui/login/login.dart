import 'package:bike_life/base/dynamic_size.dart';
import 'package:bike_life/base/images.dart';
import 'package:bike_life/base/routes.dart';
import 'package:bike_life/ui/login/login_style.dart';
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
                    width: bikeLifeLogoWidth,
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
                  width: userIcon,
                  child: Image(image: AssetImage(AppImages.person)),
                ),
              ),
              Expanded(
                flex: 50,
                child: Column(
                  children: [
                    Container(
                      width: width * 0.7,
                      height: buttonHeight,
                      margin: marginTextField,
                      decoration: textFieldPassword,
                      child: TextFormField(
                        controller: password,
                        textAlign: TextAlign.center,
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        style: TextStyle(
                            fontSize:
                                DynamicSize.size(screenWidth: width, size: 17)),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Գաղտնաբառ',
                          hintStyle: hintStyle,
                        ),
                      ),
                    ),
                    CupertinoButton(
                      padding: zero,
                      child: Container(
                        width: width * 0.7,
                        height: buttonHeight,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            'Մուտք',
                            style: buttonStyle,
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (password.text != "") {
                          FocusScope.of(context).requestFocus(FocusNode());
                          Navigator.pushNamed(context, Routes.services)
                              .then((value) => password.text = "");
                        }
                      },
                    ),
                    CupertinoButton(
                      padding: cupertinoButtonPadding,
                      child: Container(
                        width: width * 0.7,
                        height: buttonHeight,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            'Մուտք գործել այլ օգտագործողով',
                            style: buttonStyle,
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    CupertinoButton(
                      padding: zero,
                      child: Container(
                        width: width * 0.7,
                        height: buttonHeight,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            'Ստեղծել հաշիվ',
                            style: buttonStyle,
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
                        style: forgotPass,
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
      height: bottomBarHeight,
      child: Row(
        children: [
          Spacer(),
          CupertinoButton(
            padding: zero,
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: backButtonSize,
                ),
                Text('Հետ', style: backStyle)
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
