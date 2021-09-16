class Food {
  String _nameFood;

  Food(this._nameFood);

  String get nameFood => _nameFood;

  set nameFood(String nameFood) {
    _nameFood = nameFood;
  }

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(json["name"]);
  }
}
