// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

//pages
import '../pages/homepage.dart';
import '../pages/productpage.dart';
import '../pages/orderpage.dart';
import '../pages/accountpage.dart';
import '../pages/helppage.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late HomePage homePage;
  late ProductPage productPage;
  late OrderPage orderPage;
  late AccountPage accountPage;
  late HelpPage helpPage;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    homePage = HomePage();
    productPage = ProductPage();
    orderPage = OrderPage();
    accountPage = AccountPage();
    helpPage = HelpPage();

    pages = [homePage, productPage, orderPage, accountPage, helpPage];
    currentPage = orderPage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.lightGreen,
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_rounded),
            label: "Products",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store_mall_directory_rounded),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: "You",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_center),
            label: "Help",
          ),
        ],
      ),
      body: currentPage,
    );
  }
}
