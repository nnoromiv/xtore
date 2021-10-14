// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

final textStyle_1 = TextStyle(
    fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.grey);

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1.0,
      borderRadius: BorderRadius.circular(30.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
          hintText: "Search products",
          hintStyle: textStyle_1,
          suffixIcon: Icon(
            Icons.search_outlined,
            color: Colors.lightGreen,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
