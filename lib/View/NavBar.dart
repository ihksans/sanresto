import 'package:flutter/material.dart';
import 'package:sanresto/Widget/platform_widget.dart';
import 'settings_page.dart';
import 'MenuScreen.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class NavTabBar extends StatefulWidget {
  static const routeName = '/home_page';
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavTabBar> {
  //index item
  int _bottomNavIndex = 0;
  static const String _headlineText = 'Menu';

  //screen
  List<Widget> _listWidget = [
    MenuScreen(),
    SettingsPage(),
  ];
  //Navbar item
  List<BottomNavigationBarItem> _bottomNavBarItems = [
    BottomNavigationBarItem(
      icon: Image.asset('img/home.png', width: 30, height: 30),
      label: _headlineText,
    ),
    BottomNavigationBarItem(
      icon: Image.asset('img/bag.png', width: 30, height: 30),
      label: SettingsPage.settingsTitle,
    ),
  ];

  //return widget or navbar
  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      body: _listWidget[_bottomNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        items: _bottomNavBarItems,
        onTap: _onBottomNavTapped,
      ),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: _bottomNavBarItems),
      tabBuilder: (context, index) {
        return _listWidget[index];
      },
    );
  }

  void _onBottomNavTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }
}
