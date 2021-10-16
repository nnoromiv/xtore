// ignore_for_file: sized_box_for_whitespace, camel_case_types

import 'package:flutter/material.dart';

class BackGround_signIn extends StatelessWidget {
  final Widget child;
  const BackGround_signIn({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/main_top.png",
                width: size.width * 0.25,
                color: Colors.lightGreen,
              )),
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "assets/login_bottom.png",
                width: size.width * 0.3,
                color: Colors.lightGreen,
              )),
          child,
        ],
      ),
    );
  }
}
