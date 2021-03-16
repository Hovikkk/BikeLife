import 'package:bike_life/base/dynamic_size.dart';
import 'package:bike_life/base/images.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
    return Column(
      children: [
        appBar(),
        bodyContent()
      ],
    );
  }

  Widget appBar() {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Container(
        width: width,
        height: DynamicSize.size(screenWidth: width, size: 50),
        color: Color(0xffE9EAEC),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage(AppImages.inecoBank), width: 110,),
              Padding(
                padding: EdgeInsets.only(left: DynamicSize.size(screenWidth: width, size: 130)),
                child: Text('Սեսիան կավարտվի 19։50', style: TextStyle(fontSize: DynamicSize.size(screenWidth: width, size: 8), color: Colors.grey),),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget bodyContent() {
    return Column(
      children: [
        
      ],
    );
  }
}