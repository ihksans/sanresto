import 'package:flutter/material.dart';
import 'package:sanresto/Model/food.dart';
import 'package:sanresto/Model/item.dart';
import 'package:sanresto/Model/resto.dart';
import 'package:sanresto/ViewModel/foodList.dart';

class DetailScreen extends StatefulWidget {
  Resto restoData;
  DetailScreen(this.restoData);
  @override
  DetailState createState() => DetailState(restoData);
}

class DetailState extends State<DetailScreen> {
  Resto restoData;
  bool isCurrent = true;
  DetailState(this.restoData);
  List<ItemMenu> displayMenu = <ItemMenu>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('San Resto'),
        ),
        body: Hero(
          tag: restoData,
          child: ListView(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Image.network(restoData.imgResto,
                          width: 150, height: 150),
                      margin: const EdgeInsets.only(right: 10),
                    ),
                    Text(
                      restoData.nameResto,
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      restoData.descResto,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('img/star.png', width: 15, height: 15),
                        Text(
                          restoData.ratingResto.toString(),
                          style: TextStyle(fontSize: 13.0),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: ElevatedButton(
                          child: Text("Foods"),
                          onPressed: () {
                            setCurrentMenu(restoData.drinkItem);
                          }),
                    ),
                    Container(
                      child: ElevatedButton(
                          child: Text("Drink"),
                          onPressed: () {
                            setCurrentMenu(restoData.foodItem);
                          }),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child:
                        SizedBox(height: 400.0, child: foodPage(displayMenu)),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              )
            ],
          ),
        )

        // child: ,
        );
  }

  setCurrentMenu(List<ItemMenu> currentMenu) {
    this.displayMenu = currentMenu;
  }
}
