// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors
import 'package:flutter/material.dart';
// import 'package:x_tore/welcome/welcomescreen.dart';

// import 'bottomnavigationpages/signinpage.dart';
import 'screens/mainscreen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Xtore",
      theme: ThemeData(
          primaryColor: Colors.lightGreen[400],
          scaffoldBackgroundColor: Colors.white),
      // home: SignInPage(),
      // home: WelcomeScreen(),
      home: MainScreen(),
    );
  }
}
