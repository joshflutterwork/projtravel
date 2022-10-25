import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:travel_proj/akun_screen.dart';
import 'package:travel_proj/home_screen.dart';
import 'package:travel_proj/order_screen.dart';
import 'package:travel_proj/reward_screen.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({Key? key}) : super(key: key);

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int currentIndex = 0;

  Widget buttomNavigationWidget() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(96, 218, 218, 218),
              spreadRadius: 0,
              blurRadius: 10),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue[100]!.withOpacity(0.9),
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: currentIndex,
          elevation: 10,
          onTap: (index) {
            setState(() {
              currentIndex = index;
              log("CURRENT INDEX : " + currentIndex.toString());
            });
          },
          items: [
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home,
                  size: 31,
                  color: Colors.blue,
                ),
                icon: Icon(Icons.home, size: 31),
                label: ''),
            BottomNavigationBarItem(
                activeIcon: Image.asset(
                  'assets/ic_orderan.png',
                  width: 31,
                  height: 28,
                  color: Colors.blue,
                ),
                icon: Image.asset(
                  'assets/ic_orderan.png',
                  width: 31,
                  height: 28,
                ),
                label: ''),
            BottomNavigationBarItem(
                activeIcon: Image.asset(
                  'assets/ic_reward.png',
                  width: 31,
                  height: 28,
                  color: Colors.blue,
                ),
                icon: Image.asset(
                  'assets/ic_reward.png',
                  width: 31,
                  height: 28,
                ),
                label: ''),
            BottomNavigationBarItem(
                activeIcon: Image.asset(
                  'assets/ic_menu_lainnya.png',
                  width: 31,
                  height: 28,
                  color: Colors.blue,
                ),
                icon: Image.asset(
                  'assets/ic_menu_lainnya.png',
                  width: 31,
                  height: 28,
                ),
                label: ''),
          ],
        ),
      ),
    );
  }

  getMenu(int index) {
    switch (index) {
      case 0:
        return HomeScreen();
        break;
      case 1:
        return OrderScreen();
        break;
      case 2:
        return RewardScreen();
        break;
      case 3:
        return AkunScreen();
        break;
      default:
        return HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: getMenu(currentIndex),
        bottomNavigationBar: buttomNavigationWidget(),
      ),
    );
  }
}
