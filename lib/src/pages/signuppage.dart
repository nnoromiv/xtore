// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:x_tore/src/pages/signinpage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

bool _toggleVisibility = true;
bool _toggleConfirmVisibility = true;

class _SignUpPageState extends State<SignUpPage> {
  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Email",
          hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0)),
    );
  }

  Widget _buildUsernameTextField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Username",
          hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0)),
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0),
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
      obscureText: _toggleVisibility,
    );
  }

  Widget _buildConfirmPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Confirm Password",
        hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0),
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
      obscureText: _toggleConfirmVisibility,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign up",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.black),
            ),
            SizedBox(
              height: 50.0,
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    _buildUsernameTextField(),
                    SizedBox(
                      height: 20.0,
                    ),
                    _buildEmailTextField(),
                    SizedBox(
                      height: 20.0,
                    ),
                    _buildPasswordTextField(),
                    SizedBox(
                      height: 20.0,
                    ),
                    _buildConfirmPasswordTextField(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.lightGreen),
              child: Center(
                child: Text(
                  "Sign up",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),
            Divider(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(width: 10.0),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => SignInPage()));
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                        color: Colors.lightGreen, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
