class ItemMenu {
  String _name;

  String get name => _name;

  set name(String name) {
    _name = name;
  }

  ItemMenu(this._name);

  factory ItemMenu.fromJson(Map<String, dynamic> json) {
    return ItemMenu(json["name"]);
  }
}
