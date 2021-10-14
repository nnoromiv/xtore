// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';

// ignore: use_key_in_widget_constructors
class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "X",
          style: TextStyle(
              color: Colors.lightGreen,
              fontStyle: FontStyle.italic,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 3.0,
        ),
        Text("TORE",
            style: TextStyle(
                color: Colors.grey,
                fontSize: 20.0,
                fontWeight: FontWeight.w600)),
      ],
    );
  }
}
