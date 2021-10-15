// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_tore/src/data/constants.dart';
import 'package:x_tore/src/pages/background.dart';
import 'package:x_tore/src/pages/signinpage.dart';
import 'package:x_tore/src/pages/signuppage.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Text(
            "WELCOME TO XTORE",
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 18.0),
          ),
          SizedBox(height: 20.0),
          Column(
            children: [
              SvgPicture.asset(
                "assets/carting.svg",
                height: size.height * 0.3,
                width: size.width / 2,
                color: Colors.lightGreen,
              ),
              SvgPicture.asset(
                "assets/buy.svg",
                height: size.height * 0.3,
                width: size.width / 2,
                color: Colors.lightGreen,
              ),
            ],
          ),
          RoundedButton(
            text: "LOGIN",
            textColor: Colors.white,
            color: kPrimaryColor,
            press: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => SignInPage()));
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          RoundedButton(
            text: "SIGNUP",
            textColor: Colors.white,
            color: kSecondaryColor,
            press: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => SignUpPage()));
            },
          ),
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(29.0),
      child: Container(
        color: kPrimaryColor,
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        width: size.width * 0.6,
        child: TextButton(
            onPressed: press,
            child: Text(
              text,
              style: TextStyle(color: textColor),
            )),
      ),
    );
  }
}
