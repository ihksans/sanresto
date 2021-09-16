import 'package:flutter/material.dart';
import 'package:sanresto/Model/item.dart';

class ItemBox extends StatelessWidget {
  ItemMenu itemFood;
  ItemBox(this.itemFood);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Container(
            //   child: Image.asset(itemFood.image, width: 70, height: 70),
            //   margin: const EdgeInsets.only(right: 10),
            // ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    itemFood.name,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // Text(
                  //   'Rp. ' + itemFood.price.toString(),
                  //   style: TextStyle(fontSize: 16.0),
                  // ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
              margin: const EdgeInsets.only(top: 15),
            )
          ],
        ));
  }
}
