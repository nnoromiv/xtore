// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:x_tore/welcome/body.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
