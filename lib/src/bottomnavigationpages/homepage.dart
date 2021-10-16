// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
//Widget folder
import '../widgets/home_top.dart';
//Shirt category
import '../widgets/shirt_category.dart';
//Search bar
import '../widgets/search_bar.dart';
//Boughtitems
import '../widgets/bought_items.dart';
//Items
import '../data/homepage_items.dart';
import '../models/items_model.dart';
//sizer
// import 'package:sizer/sizer.dart';
//Logo
import '../widgets/logo.dart';

final List<Items> _items = items;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0.0),
        children: <Widget>[
          Logo(),
          SizedBox(
            height: 2.0,
          ),
          SearchBar(),
          SizedBox(
            height: 20.0,
          ),
          HomeTop(),
          ShirtCategory(),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.star_border_purple500_rounded,
                      color: Colors.green[900],
                    ),
                    Text(
                      "Sell on X-M",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.greenAccent[900]),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    Text(
                      "View all",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w200,
                          color: Colors.blueGrey[900]),
                    ),
                    Icon(
                      Icons.arrow_forward_rounded,
                      size: 16,
                      color: Colors.lightGreen[900],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Column(
            children: _items.map(_buildItems).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildItems(Items items) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtItems(
        id: items.id,
        name: items.name,
        imagePath: items.imagePath,
        category: items.category,
        discount: items.discount,
        price: items.price,
        ratings: items.ratings,
      ),
    );
  }
}
