class UserDetails {
  String email = 'janedoe@gmail.com';
  String username = '';
  String profilename = 'Jhane Doe';

  void getEmail(String value) {
    email = value;
  }

  void getUserName(value) {
    username = value;
  }

  void setProfileName(value) {
    profilename = value;
  }

  UserDetails();
}

class FoodItem {
  late String name;
  late String price;
  FoodItem({required this.name, required this.price});
}

class ItemList {
  List<FoodItem> foodlist = [
    FoodItem(name: 'Name', price: 'Price'),
  ];

  void addtolist(name, price) {
    FoodItem newitem = FoodItem(name: name, price: price);
    foodlist.add(newitem);
  }
}
