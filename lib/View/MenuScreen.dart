import 'package:flutter/material.dart';
import 'package:sanresto/Utils/data.dart';
import 'package:sanresto/ViewModel/itemList.dart';

class MenuScreen extends StatelessWidget {
  static const routeName = '/menu';

  Data item = ListData;
  final TextEditingController _keyword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('San Resto'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: TextField(
                      controller: _keyword,
                      decoration: InputDecoration(
                        hintText: 'search here!',
                      ))),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(height: 400.0, child: _listItem(item)),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          )
        ],
      ),
    );
  }
}

//Widget pengecekan data
Widget _listItem(Data data) {
  if (data.restoList.length == 0) {
    //jika kosong
    return Container(
        child: Column(children: <Widget>[
      Image.asset('img/no-data.jpg', width: 300, height: 300),
      SizedBox(
        height: 5,
      ),
      Center(
        child: Text(
          "Data kosong",
          style: TextStyle(fontSize: 16.0),
        ),
      )
    ]));
  } else {
    return itemPage();
  }
}
