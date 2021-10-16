// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:x_tore/signin/signinpage.dart';
import 'package:x_tore/signup/signuppage.dart';
// import 'package:sizer/sizer.dart';

// ignore: use_key_in_widget_constructors
class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Text(
              "X",
              style: TextStyle(
                  color: Colors.lightGreen,
                  fontStyle: FontStyle.italic,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          width: 3.0,
        ),
        Text("TORE",
            style: TextStyle(
                color: Colors.grey,
                fontSize: 20.0,
                fontWeight: FontWeight.w600)),
        SizedBox(
          width: size.width * 0.6,
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => SignInPage()));
              },
              child: Icon(
                Icons.login_rounded,
                color: Colors.green[700],
              ),
            ),
            SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => SignUpPage()));
              },
              child: Icon(
                Icons.crib_rounded,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.logout,
                color: Colors.green[700],
              ),
            )
          ],
        )
      ],
    );
  }
}
