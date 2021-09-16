import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sanresto/View/MenuScreen.dart';
import 'package:sanresto/routes.dart';
import 'dart:convert';
import "package:sanresto/Utils/data.dart";
import "package:sanresto/main.dart";
import "package:sanresto/Model/resto.dart";

class InitialScreen extends State<MainAppState> {
  static const routeName = '/initial';
  //var restoData;
  Data? restoData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      children: <Widget>[
        Center(
          child: Container(
            color: Colors.blueAccent,
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.asset('img/initial-logo.png',
                      width: 150, height: 150),
                  margin: const EdgeInsets.only(bottom: 10, top: 50),
                ),
                Container(
                  child: Text(
                    'SanResto',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  margin: const EdgeInsets.only(bottom: 10, top: 20),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                        'Using this tool, you can search more restaurants and more quickly.',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  margin: const EdgeInsets.only(top: 10),
                )
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    _loadDataJson();
                  },
                  child: Text(
                    'CONTINUE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            margin: const EdgeInsets.only(top: 40),
          ),
        )
      ],
    )));
  }

  Future _loadDataJson() async {
    String jsonString =
        await rootBundle.loadString('assets/local_restaurant.json');
    final jsonData = json.decode(jsonString);
    Data data = Data.fromJson(jsonData);
    setState(() {
      restoData = data;
      // sample.name => you can access field from class mode
      ListData = data;
    });
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Routes()));
  }
}
