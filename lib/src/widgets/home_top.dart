// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:x_tore/src/bottomnavigationpages/orderpage.dart';
//sizer
// import 'package:sizer/sizer.dart';

class HomeTop extends StatelessWidget {
  final textStyle = TextStyle(
      fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.lightGreen);
  final textStyle_1 = TextStyle(
      fontSize: 11.0, fontWeight: FontWeight.normal, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Too tired to go to the store!!!",
                style: textStyle,
              ),
              Text(
                "We bring the store to you",
                style: textStyle_1,
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => OrderPage()));
            },
            child: const Icon(
              Icons.shopping_cart_rounded,
              size: 20.0,
              color: Colors.lightGreen,
            ),
          ),
        ],
      ),
    );
  }
}
