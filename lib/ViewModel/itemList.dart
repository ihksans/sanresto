import 'package:flutter/material.dart';
import 'package:sanresto/Model/resto.dart';
import 'package:sanresto/Utils/data.dart';
import 'package:sanresto/Model/food.dart';
import 'package:sanresto/View/DetailScreen.dart';

class itemPage extends StatefulWidget {
  @override
  itemList createState() => itemList();
}

class itemList extends State<itemPage> {
  Data data = ListData as Data;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: refreshData,
      child: Scaffold(
        body: ListView.builder(
          itemBuilder: (context, index) {
            // Item item = data[index];

            Data data = ListData as Data;
            Resto item = data.restoList[index];
            return InkWell(
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DetailScreen(item)));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Image.network(item.imgResto,
                                          width: 70, height: 70),
                                      margin: const EdgeInsets.only(right: 10),
                                    ),
                                    Container(
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            item.nameResto,
                                            style: TextStyle(fontSize: 16.0),
                                          ),
                                        ],
                                      ),
                                      margin: const EdgeInsets.only(top: 15),
                                    )
                                  ],
                                ),
                              ))),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: ListData.restoList.length,
        ),
      ),
    );
  }

  //reload data
  Future refreshData() async {
    data = [] as Data;
    setState(() {
      data = ListData;
    });
  }
}

//Widget status hutang sudah bayar atau bel
