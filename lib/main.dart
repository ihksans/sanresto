import 'package:flutter/material.dart';
import 'package:sanresto/View/InitialScreen.dart';
import 'package:sanresto/style/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      home: MainAppState(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainAppState extends StatefulWidget {
  @override
  InitialScreen createState() => InitialScreen();
}
