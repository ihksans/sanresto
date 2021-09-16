import 'package:sanresto/Model/food.dart';
import 'package:sanresto/Model/resto.dart';

class Data {
  List<Resto> restoList;
  Data(this.restoList);

  factory Data.fromJson(Map<String, dynamic> json) {
    var listResto = json["restaurants"] as List;

    var iterableResto = listResto.map((resto) {
      return Resto.fromJson(resto);
    });
    var restorants = List<Resto>.from(iterableResto);

    return Data(restorants);
  }
}

Data ListData = new Data([]);
