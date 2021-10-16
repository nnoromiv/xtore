// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, use_key_in_widget_constructors, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:x_tore/signin/alreadyhaveanaccont.dart';
import 'package:x_tore/signin/roundinputfield.dart';
import 'package:x_tore/signin/signinpage.dart';
import 'package:x_tore/signin/textformfield.dart';
import 'package:x_tore/signup/background_signup.dart';
import 'package:x_tore/signup/orDivider.dart';
import 'package:x_tore/signup/social_icon.dart';
import 'package:x_tore/src/bottomnavigationpages/homepage.dart';
import 'package:x_tore/welcome/body.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _toggleVisibility = true;
  bool _toggleConfirmVisibility = true;
  @override
  Widget build(BuildContext context) {
    return BackGround_signUp(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SIGNUP",
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            TextFieldContainer(
                child: RoundInputField(
              hintText: 'LastName',
              icon: Icons.supervised_user_circle_rounded,
              onChanged: (String value) {},
              color: Color.fromRGBO(27, 94, 32, 1.0),
            )),
            TextFieldContainer(
                child: RoundInputField(
              hintText: 'FirstName',
              icon: Icons.person,
              onChanged: (String value) {},
              color: Color.fromRGBO(27, 94, 32, 1.0),
            )),
            TextFieldContainer(
                child: RoundInputField(
              hintText: 'Email',
              icon: Icons.mail_rounded,
              onChanged: (String value) {},
              color: Color.fromRGBO(27, 94, 32, 1.0),
            )),
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
            TextFieldContainer(
                child: TextFormField(
              obscureText: _toggleConfirmVisibility,
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  Icons.lock,
                  color: Colors.green[900],
                ),
                hintText: "Confirm Password",
                hintStyle: TextStyle(color: Colors.green[900], fontSize: 16.0),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _toggleConfirmVisibility = !_toggleConfirmVisibility;
                    });
                  },
                  icon: _toggleConfirmVisibility
                      ? Icon(Icons.visibility_off_outlined)
                      : Icon(Icons.visibility_outlined),
                ),
              ),
            )),
            RoundedButton(
                text: "Sign Up",
                press: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => SignInPage()));
                },
                color: Color.fromRGBO(27, 94, 32, 1.0),
                textColor: Colors.white),
            AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => SignInPage()));
                }),
            orDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                socialIcons(
                  iconSrc: 'assets/facebook.svg',
                  press: () {},
                ),
                socialIcons(
                  iconSrc: 'assets/twitter.svg',
                  press: () {},
                ),
                socialIcons(
                  iconSrc: 'assets/google-plus.svg',
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
