import 'food.dart';
import 'drink.dart';
import 'item.dart';

class Resto {
  String _id;

  String get id => _id;

  set id(String id) {
    _id = id;
  }

  //id
  String _nameResto;
  //name
  String _descResto;
  //description
  String _imgResto;
  //pictureId
  String _cityResto;
  //city
  double _ratingResto;
  //rating
  List<ItemMenu> _foodItem;

  List<ItemMenu> _drinkItem;

  List<ItemMenu> get drinkItem => _drinkItem;

  set drinkItem(List<ItemMenu> drinkItem) {
    _drinkItem = drinkItem;
  }
  //menu

  double get ratingResto => _ratingResto;

  set ratingResto(double ratingResto) {
    _ratingResto = ratingResto;
  }

  String get cityResto => _cityResto;

  set cityResto(String cityResto) {
    _cityResto = cityResto;
  }

  String get nameResto => _nameResto;

  String get imgResto => _imgResto;

  set imgResto(String imgResto) {
    _imgResto = imgResto;
  }

  set nameResto(String nameResto) {
    _nameResto = nameResto;
  }

  String get descResto => _descResto;

  set descResto(String descResto) {
    _descResto = descResto;
  }

  List<ItemMenu> get foodItem => _foodItem;

  set foodItem(List<ItemMenu> foodItem) {
    _foodItem = foodItem;
  }

  void sortFoodByRating(foodItem) {
    _foodItem = foodItem.sort((a, b) => a.rating.compareTo(b.rating));
  }

  Resto(this._id, this._nameResto, this._descResto, this._imgResto,
      this._cityResto, this._ratingResto, this._foodItem, this._drinkItem);
  factory Resto.fromJson(Map<String, dynamic> json) {
    var menu = json["menus"];

    var listFood = menu["foods"] as List;
    var iterableFoods = listFood.map((food) {
      return ItemMenu.fromJson(food);
    });
    var foods = List<ItemMenu>.from(iterableFoods);

    var listDrink = menu["drinks"] as List;
    var iterableDrink = listDrink.map((drink) {
      return ItemMenu.fromJson(drink);
    });
    var drinks = List<ItemMenu>.from(iterableDrink);

    return Resto(json["id"], json["name"], json["description"],
        json["pictureId"], json["city"], json["rating"], foods, drinks);
  }
}
