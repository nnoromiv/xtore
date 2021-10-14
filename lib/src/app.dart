// ignore_for_file: file_names, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'screens/mainscreen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Xtore",
      theme: ThemeData(primaryColor: Colors.lightGreen[400]),
      home: MainScreen(),
    );
  }
}
