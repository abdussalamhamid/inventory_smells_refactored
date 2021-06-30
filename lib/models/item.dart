class Item {
  String id;
  int quantity;
  String name;
  String type;
  String date;

  Item({this.id, this.quantity, this.name, this.type, this.date});
  void setId(String i) {
    id = i;
  }

  String getId() {
    return this.id;
  }

  void setQuantity(int q) {
    quantity = q;
  }

  int getQuantity() {
    return this.quantity;
  }

  void setName(String n) {
    name = n;
  }

  String getName() {
    return this.name;
  }

  void setType(String t) {
    type = t;
  }

  String getType() {
    return this.type;
  }

  void setDate(String d) {
    date = d;
  }

  String getDate() {
    return this.date;
  }

  List<Item> getInventory() {
    List<Item> items = [];
    return items;
  }

  void deleteItem(String id) {}
}
