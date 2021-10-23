// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, dead_code, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:x_tore/signin/alreadyhaveanaccont.dart';
import 'package:x_tore/signin/background_sigin.dart';
import 'package:x_tore/signup/orDivider.dart';
import 'package:x_tore/signup/signuppage.dart';
import 'package:x_tore/signup/social_icon.dart';
import 'package:x_tore/src/screens/mainscreen.dart';
import 'package:x_tore/welcome/body.dart';
import 'package:x_tore/signin/roundinputfield.dart';
import 'package:x_tore/signin/textformfield.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _toggleVisibility = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround_signIn(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            Text(
              "LOGIN",
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/enter.svg",
              height: size.height * 0.3,
              width: size.width / 2,
              color: Colors.lightGreen,
            ),
            SizedBox(height: 10.0),
            TextFieldContainer(
              child: RoundInputField(
                hintText: 'Your Email',
                icon: Icons.person,
                color: Colors.green,
                onChanged: (String value) {},
              ),
            ),
            TextFieldContainer(
                child: TextFormField(
              obscureText: _toggleVisibility,
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  Icons.lock,
                  color: Colors.green[900],
                ),
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.green[900], fontSize: 16.0),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _toggleVisibility = !_toggleVisibility;
                    });
                  },
                  icon: _toggleVisibility
                      ? Icon(Icons.visibility_off_outlined)
                      : Icon(Icons.visibility_outlined),
                ),
              ),
            )),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "LOGIN",
              textColor: Colors.white,
              color: Color.fromRGBO(27, 94, 32, 1.0),
              press: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => MainScreen()));
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
                login: true,
                press: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => SignUpPage()));
                }),
            orDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                socialIcons(iconSrc: "assets/facebook.svg", press: () {}),
                socialIcons(iconSrc: "assets/twitter.svg", press: () {}),
                socialIcons(iconSrc: "assets/google-plus.svg", press: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
