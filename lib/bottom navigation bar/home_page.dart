import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:task_app2/bottom_navigationbar%20pages/cart_page.dart';
import 'package:task_app2/bottom_navigationbar%20pages/home_screenpage.dart';
import 'package:task_app2/bottom_navigationbar%20pages/person_page.dart';
import 'package:task_app2/bottom_navigationbar%20pages/shopping_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //navigation bar items
  final items = [
    Icon(
      Iconsax.home,
      size: 30,
    ),
    Icon(
      Iconsax.shopping_cart,
      size: 30,
    ),
    Icon(
      Iconsax.shopping_bag,
      size: 30,
    ),
    Icon(
      Icons.person,
      size: 30,
    ),
  ];

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 300),
        backgroundColor: Colors.white,
        color: Colors.redAccent,
        height: 70,
        index: 0,
        items: items,
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
      ),
      body: Container(
        color: Colors.blue,
        width: double.infinity,
        height: double.infinity,
        child: getSelectedWidget(index: index),
      ),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;

    switch (index) {
      case 0:
        widget = const HomeScreenpage();
        break;

      case 1:
        widget = const CartPage();
        break;

      case 2:
        widget = const ShoppingPage();
        break;

      case 3:
        widget = PersonPage();
        break;

      default:
        widget = const HomeScreenpage();
        break;
    }
    return widget;
  }
}
