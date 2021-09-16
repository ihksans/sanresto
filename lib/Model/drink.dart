class Drink {
  String _nameDrink;

  String get name => _nameDrink;

  set name(String name) {
    _nameDrink = name;
  }

  Drink(this._nameDrink);

  factory Drink.fromJson(Map<String, dynamic> json) {
    return Drink(json["name"]);
  }
}
