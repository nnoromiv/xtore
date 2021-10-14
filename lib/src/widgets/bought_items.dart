// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

// //Items
// import '../data/items.dart';

class BoughtItems extends StatefulWidget {
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;

  BoughtItems(
      {required this.id,
      required this.name,
      required this.imagePath,
      required this.category,
      required this.price,
      required this.discount,
      required this.ratings});

  @override
  _BoughtItemsState createState() => _BoughtItemsState();
}

class _BoughtItemsState extends State<BoughtItems> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 340.0,
            child: Image.asset(
              widget.imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
              height: 60.0,
              width: 340.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black, Colors.black12],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter)),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.lightGreen,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.lightGreen,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.lightGreen,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.lightGreen,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.lightGreen,
                          size: 16.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "" + widget.ratings.toString() + "%",
                          style: TextStyle(color: Colors.grey, fontSize: 15.0),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Price",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "£" + widget.price.toString() + "",
                      style: TextStyle(
                        color: Colors.lightGreen,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
