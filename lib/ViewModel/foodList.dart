import 'package:flutter/material.dart';
import 'package:sanresto/Model/resto.dart';
import 'package:sanresto/Utils/data.dart';
import 'package:sanresto/Model/item.dart';
import 'package:sanresto/View/DetailScreen.dart';
import 'package:sanresto/ViewModel/itemBox.dart';

class foodPage extends StatefulWidget {
  List<ItemMenu> item;

  foodPage(this.item);
  @override
  foodList createState() => foodList(item);
}

class foodList extends State<foodPage> {
  List<ItemMenu> itemList;
  foodList(this.itemList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          ItemMenu item = itemList[index];
          return InkWell(
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[ItemBox(item)],
                          ),
                        )),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: itemList.length,
      ),
    );
  }

  //reload data
  Future refreshData() async {
    setState(() {});
  }
}
