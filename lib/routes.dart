import 'package:flutter/material.dart';
import 'package:sanresto/View/InitialScreen.dart';
import 'package:sanresto/View/MenuScreen.dart';
import 'package:sanresto/View/settings_page.dart';
import 'package:sanresto/style/styles.dart';

import 'View/NavBar.dart';

class Routes extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: primaryColor,
        accentColor: secondaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: myTextTheme,
        appBarTheme: AppBarTheme(
          textTheme: myTextTheme.apply(bodyColor: Colors.black),
          elevation: 0,
        ),
      ),
      // home: InitialScreen(),
      initialRoute: NavTabBar.routeName,
      routes: {
        NavTabBar.routeName: (context) => NavTabBar(),
        SettingsPage.routeName: (context) => SettingsPage(),
        MenuScreen.routeName: (context) => MenuScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
