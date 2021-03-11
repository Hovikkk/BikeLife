import 'package:bike_life/base/dynamic_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
      bottomNavigationBar: bottomBar(),
    );
  }

  Widget body() {
    return Container(
      width: width,
      height: height,
      color: Color(0xffAED400),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 20,
              child: Center(
                child: Text(
                  'BikeLife',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: DynamicSize.size(screenWidth: width, size: 40),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Center(
            //   child: Icon(Icons.person, color: Colors.white,),
            // ),
            Expanded(
              flex: 30,
              child: Icon(Icons.person, size: 150, color: Colors.white),
            ),
            Expanded(
              flex: 40,
              child: Column(
                children: [
                  Container(
                    width: width * 0.7,
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Color(0xff535A3B)),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Գաղտնաբառ',
                        hintStyle: TextStyle(
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
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    onPressed: () {},
                  ),
                  CupertinoButton(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      width: width * 0.7,
                      height: DynamicSize.size(screenWidth: width, size: 45),
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.white),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                          child: Text(
                        'Մուտք գործել այլ օգտագործողով',
                        style: TextStyle(color: Colors.white),
                      )),
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
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    onPressed: () {},
                  ),
                  CupertinoButton(
                    child: Text(
                      'Մոռացել եք գաղտնաբառը',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bottomBar() {
    return Container(
      color: Color(0xffAED400),
      height: 70,
      child: Row(
        children: [
          Spacer(),
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 20,
                ),
                Text(
                  'Հետ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
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
