// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    required this.login,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't have an account?" : "Already have an Account?",
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(width: 10.0),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Signup" : "Login",
            style: TextStyle(
                color: Colors.green[700], fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
