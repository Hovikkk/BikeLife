import 'package:bike_life/base/dynamic_size.dart';
import 'package:bike_life/base/images.dart';
import 'package:bike_life/base/routes.dart';
import 'package:bike_life/ui/register/register_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController firstName = TextEditingController();
  TextEditingController surName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffAED400),
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          body: body(),
        ),
      ),
    );
  }

  Widget body() {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: SingleChildScrollView(
        child: Container(
            width: width,
            height: height - deviceTopPadding,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.splash_screen),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    CupertinoButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          
                          Icons.clear,
                          color: Colors.black,
                          size: backBtnSize,
                        )),
                    Image(
                      image: AssetImage(AppImages.bikeLifeLogo),
                      width: logoWidth,
                      height: logoHeight,
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: logoHeight),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ձեր անձնական տվյալները',
                            style: textStyle,
                          ),
                          Theme(
                            data: ThemeData(
                              primaryColor: Color(0xffAED400),
                              primaryColorDark: Color(0xffAED400),
                            ),
                            child: TextFormField(
                              controller: firstName,
                              style: inputStyle,
                              decoration: InputDecoration(
                                labelText: 'Անուն',
                              ),
                            ),
                          ),
                          Theme(
                            data: ThemeData(
                              primaryColor: Color(0xffAED400),
                              primaryColorDark: Color(0xffAED400),
                            ),
                            child: TextFormField(
                              controller: surName,
                              style: inputStyle,
                              decoration: InputDecoration(
                                labelText: 'Ազգանուն',
                              ),
                            ),
                          ),
                          Theme(
                            data: ThemeData(
                              primaryColor: Color(0xffAED400),
                              primaryColorDark: Color(0xffAED400),
                            ),
                            child: TextFormField(
                              controller: email,
                              style: inputStyle,
                              decoration: InputDecoration(
                                labelText: 'Էլ հասցե',
                              ),
                            ),
                          ),
                          Theme(
                            data: ThemeData(
                              primaryColor: Color(0xffAED400),
                              primaryColorDark: Color(0xffAED400),
                            ),
                            child: TextFormField(
                              obscureText: true,
                              enableSuggestions: false,
                              autocorrect: false,
                              controller: password,
                              style: inputStyle,
                              decoration: InputDecoration(
                                labelText: 'Գաղտնաբառ',
                              ),
                            ),
                          ),
                          Padding(
                            padding: buttonPadding,
                            child: CupertinoButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                if (firstName.text != "" &&
                                    surName.text != "" &&
                                    email.text != "" &&
                                    password.text != "") {
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                  Navigator.pushNamed(context, Routes.services)
                                      .then((value) {
                                    firstName.text = "";
                                    surName.text = "";
                                    email.text = "";
                                    password.text = "";
                                  });
                                }
                              },
                              child: Container(
                                width: width,
                                height: buttonTextSize,
                                decoration: BoxDecoration(
                                    color: Color(0xff5CBE03),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                    child: Text(
                                  'Ստեղծել հաշիվ',
                                  style: buttonStyle,
                                )),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
