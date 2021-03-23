import 'package:bike_life/base/dynamic_size.dart';
import 'package:bike_life/base/images.dart';
import 'package:bike_life/ui/payment/payment_style.dart';
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
      padding: appBarPadding,
      child: Container(
        width: width,
        height: appBarHeight,
        color: Color(0xffE9EAEC),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: payCardAndBackBtnHeight,
                child: CupertinoButton(
                  padding: zero,
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.black,
                    size: backBtnSize,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(AppImages.inecoBank),
                    width: inecoLogoSize,
                  ),
                  Padding(
                    padding: sessionEndPadding,
                    child: Text(
                      'Սեսիան կավարտվի 19։50',
                      style: sessionEndStyle,
                    ),
                  )
                ],
              ),
              Container(
                width: payCardAndBackBtnHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bodyContent() {
    return Padding(
      padding: bodyContentPadding,
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
            style: labelStyle,
          ),
        ),
        TextFormField(
          style: textFieldStyle,
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
            hintStyle: hintStyle,
          ),
        ),
      ],
    );
  }

  Widget cardUserName() {
    return Column(
      children: [
        Padding(
          padding: textFieldPadding,
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Ձեր Անունը',
              style: labelStyle,
            ),
          ),
        ),
        TextFormField(
          style: textFieldStyle,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffD8D8D8)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffA4A4A4)),
            ),
            hintText: 'Firstname Lastname',
            hintStyle: hintStyle,
          ),
        ),
      ],
    );
  }

  Widget cardDateDay() {
    return Column(
      children: [
        Padding(
          padding: textFieldPadding,
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Քարտի Գործողության վերջնաժամկետը',
              style: labelStyle,
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
                  style: datePickerTextStyle,
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
          padding: textFieldPadding,
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'CVC2/CVV2 կոդ',
              style: labelStyle
            ),
          ),
        ),
        TextFormField(
          maxLength: 3,
          keyboardType: TextInputType.number,
          style: textFieldStyle,
          decoration: InputDecoration(
            counterText: "",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffD8D8D8)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffA4A4A4)),
            ),
            hintText: '123',
            hintStyle: hintStyle,
          ),
        ),
      ],
    );
  }

  Widget price() {
    return Padding(
      padding:
          textFieldPadding,
      child: Align(
        alignment: Alignment.topLeft,
        child: Row(
          children: [
            Text(
              'Գումար',
              style: labelStyle
            ),
            Padding(
              padding: priceTextPadding,
              child: Text(
                '10.24 USD',
                style: priceStyle,
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
          padding: payButtonPadding,
          child: CupertinoButton(
            padding: zero,
            onPressed: () {},
            child: Container(
              width: width,
              height: payCardAndBackBtnHeight,
              color: Color(0xff0D6435),
              child: Center(
                  child: Text(
                'Վճարել',
                style: paymentStyleText,
              )),
            ),
          ),
        ),
        Padding(
          padding: paymentCardsContentPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(AppImages.visa),
                width: paymentCardWidth,
                height: payCardAndBackBtnHeight,
              ),
              Padding(
                padding: paymentCardsPadding,
                child: Image(
                  image: AssetImage(AppImages.mastercard),
                  width: paymentCardWidth,
                  height: payCardAndBackBtnHeight,
                ),
              ),
              Image(
                image: AssetImage(AppImages.arca),
                width: paymentCardWidth,
                height: payCardAndBackBtnHeight,
              )
            ],
          ),
        )
      ],
    );
  }
}
