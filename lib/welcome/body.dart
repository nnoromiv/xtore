// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_tore/welcome/background.dart';
import 'package:x_tore/signin/signinpage.dart';
import 'package:x_tore/signup/signuppage.dart';
import 'package:x_tore/src/data/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: BackGround(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "WELCOME TO",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
                Text(
                  " X",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen),
                ),
                Text(
                  "TORE",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                )
              ],
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
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29.0),
        child: Container(
          color: color,
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          width: size.width * 0.6,
          child: TextButton(
              onPressed: press,
              child: Text(
                text,
                style: TextStyle(color: textColor),
              )),
        ),
      ),
    );
  }
}
