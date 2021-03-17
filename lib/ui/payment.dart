import 'package:bike_life/base/dynamic_size.dart';
import 'package:bike_life/base/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/rounded_picker.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  DateTime newDateTime;
  List<String> mount = [
    'Հունվար',
    'Փետրվար',
    'Մարտ',
    'Ապրիլ',
    'Մայիս',
    'Հունիս',
    'Հուլիս',
    'Օգոստոս',
    'Սեպտեմբեր',
    'Հոկտեմբեր',
    'Նոյեմբեր',
    'Դեկտեմբեր'
  ];

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
        child: Column(
          children: [
            appBar(),
            bodyContent(),
          ],
        ),
      ),
    );
  }

  Widget appBar() {
    return Padding(
      padding: EdgeInsets.only(
        bottom: DynamicSize.size(screenWidth: width, size: 70),
      ),
      child: Container(
        width: width,
        height: DynamicSize.size(screenWidth: width, size: 50),
        color: Color(0xffE9EAEC),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: DynamicSize.size(screenWidth: width, size: 50),
                child: CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.black,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(AppImages.inecoBank),
                    width: 110,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: DynamicSize.size(screenWidth: width, size: 130)),
                    child: Text(
                      'Սեսիան կավարտվի 19։50',
                      style: TextStyle(
                          fontSize:
                              DynamicSize.size(screenWidth: width, size: 8),
                          color: Colors.grey),
                    ),
                  )
                ],
              ),
              Container(
                width: DynamicSize.size(screenWidth: width, size: 50),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bodyContent() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: DynamicSize.size(screenWidth: width, size: 40)),
      child: Column(
        children: [
          cardNumber(),
          cardUserName(),
          cardDateDay(),
          cardCode(),
          price(),
          payment(),
        ],
      ),
    );
  }

  Widget cardNumber() {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Ձեր քարտի համարը',
            style: TextStyle(
                color: Color(0xffA4A4A4),
                fontSize: DynamicSize.size(screenWidth: width, size: 14)),
          ),
        ),
        TextFormField(
          style: TextStyle(
              fontSize: DynamicSize.size(screenWidth: width, size: 18)),
          keyboardType: TextInputType.number,
          maxLength: 16,
          decoration: InputDecoration(
            counterText: "",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffD8D8D8)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffA4A4A4)),
            ),
            hintText: '1234 1234 1234 1234',
            hintStyle: TextStyle(color: Color(0xffD8D8D8)),
          ),
        ),
      ],
    );
  }

  Widget cardUserName() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: DynamicSize.size(screenWidth: width, size: 20)),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Ձեր Անունը',
              style: TextStyle(
                  color: Color(0xffA4A4A4),
                  fontSize: DynamicSize.size(screenWidth: width, size: 14)),
            ),
          ),
        ),
        TextFormField(
          style: TextStyle(
              fontSize: DynamicSize.size(screenWidth: width, size: 18)),
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffD8D8D8)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffA4A4A4)),
            ),
            hintText: 'Firstname Lastname',
            hintStyle: TextStyle(color: Color(0xffD8D8D8)),
          ),
        ),
      ],
    );
  }

  Widget cardDateDay() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: DynamicSize.size(screenWidth: width, size: 20)),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Քարտի Գործողության վերջնաժամկետը',
              style: TextStyle(
                color: Color(0xffA4A4A4),
                fontSize: DynamicSize.size(screenWidth: width, size: 14),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () async {
            newDateTime = await showRoundedDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(DateTime.now().year - 100),
              lastDate: DateTime(DateTime.now().year + 5),
              theme: ThemeData(
                primaryColor: Color(0xffAED400),
                accentColor: Color(0xffAED400),
              ),
              borderRadius: 16,
            );
            print(mount[newDateTime.month - 1]);
            setState(() {});
          },
          child: Container(
            width: width,
            height: 50,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1.0, color: Color(0xffD8D8D8)),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  newDateTime == null
                      ? '${DateTime.now().day} - ${mount[DateTime.now().month - 1]} - ${DateTime.now().year}'
                      : '${newDateTime.day} - ${mount[newDateTime.month - 1]} - ${newDateTime.year}',
                  style: TextStyle(
                      fontSize: DynamicSize.size(screenWidth: width, size: 18),
                      color: Color(0xff808080)),
                ),
                Icon(Icons.arrow_drop_down_sharp)
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget cardCode() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: DynamicSize.size(screenWidth: width, size: 20)),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'CVC2/CVV2 կոդ',
              style: TextStyle(
                  color: Color(0xffA4A4A4),
                  fontSize: DynamicSize.size(screenWidth: width, size: 14)),
            ),
          ),
        ),
        TextFormField(
          maxLength: 3,
          keyboardType: TextInputType.number,
          style: TextStyle(
              fontSize: DynamicSize.size(screenWidth: width, size: 18)),
          decoration: InputDecoration(
            counterText: "",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffD8D8D8)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffA4A4A4)),
            ),
            hintText: '123',
            hintStyle: TextStyle(color: Color(0xffD8D8D8)),
          ),
        ),
      ],
    );
  }

  Widget price() {
    return Padding(
      padding:
          EdgeInsets.only(top: DynamicSize.size(screenWidth: width, size: 20)),
      child: Align(
        alignment: Alignment.topLeft,
        child: Row(
          children: [
            Text(
              'Գումար',
              style: TextStyle(
                  color: Color(0xffA4A4A4),
                  fontSize: DynamicSize.size(screenWidth: width, size: 14)),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: DynamicSize.size(screenWidth: width, size: 10)),
              child: Text(
                '10.24 USD',
                style: TextStyle(
                    color: Color(0xff0D6435),
                    fontSize: DynamicSize.size(screenWidth: width, size: 16),
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget payment() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: DynamicSize.size(screenWidth: width, size: 70),
              bottom: DynamicSize.size(screenWidth: width, size: 15)),
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: Container(
              width: width,
              height: DynamicSize.size(screenWidth: width, size: 50),
              color: Color(0xff0D6435),
              child: Center(
                  child: Text(
                'Վճարել',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: DynamicSize.size(screenWidth: width, size: 18)),
              )),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              bottom: DynamicSize.size(screenWidth: width, size: 10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(AppImages.visa),
                width: DynamicSize.size(screenWidth: width, size: 70),
                height: DynamicSize.size(screenWidth: width, size: 50),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: DynamicSize.size(screenWidth: width, size: 10)),
                child: Image(
                  image: AssetImage(AppImages.mastercard),
                  width: DynamicSize.size(screenWidth: width, size: 70),
                  height: DynamicSize.size(screenWidth: width, size: 50),
                ),
              ),
              Image(
                image: AssetImage(AppImages.arca),
                width: DynamicSize.size(screenWidth: width, size: 70),
                height: DynamicSize.size(screenWidth: width, size: 50),
              )
            ],
          ),
        )
      ],
    );
  }
}
