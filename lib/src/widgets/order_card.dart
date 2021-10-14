// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 90.0,
              width: 60.0,
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(5.0)),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.arrow_circle_up_rounded,
                      color: Colors.lightGreen,
                    ),
                  ),
                  Text(
                    "0",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.arrow_circle_down_rounded,
                      color: Colors.lightGreen,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/nasaki(1).jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(35.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: Offset(0.3, 5.0))
                  ]),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Seller :",
                      style: TextStyle(
                          color: Colors.lightGreen,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Text(
                      "BlackAce",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    )
                  ],
                ),
                Text(
                  "Hotel Round Neck",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text("£200",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                        fontSize: 14.0)),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 25.0,
                  width: 120.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "color",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.remove_circle,
                                  color: Colors.red,
                                  size: 15.0,
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "color",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.remove_circle,
                                  color: Colors.red,
                                  size: 15.0,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Spacer(),
            GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.remove_circle_rounded,
                  color: Colors.grey,
                ))
          ],
        ),
      ),
    );
  }
}
