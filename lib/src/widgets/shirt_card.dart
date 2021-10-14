import 'package:flutter/material.dart';

class ShirtCard extends StatelessWidget {
  // const ShirtCard({Key? key}) : super(key: key);

  final String categoryName;
  final String imagePath;
  final int numberOfItems;

  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  ShirtCard(
      {required this.categoryName,
      required this.imagePath,
      required this.numberOfItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage(imagePath),
                height: 65.0,
                width: 65.0,
              ),
              const SizedBox(
                width: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    categoryName,
                    // ignore: prefer_const_constructors
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text("૱" + numberOfItems.toString()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
