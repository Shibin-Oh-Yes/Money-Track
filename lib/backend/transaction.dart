import 'package:flutter/material.dart';

class UserList extends ChangeNotifier {
  static List<UserInfo> currentusers = [
    UserInfo(nameofuser: 'Rashid k p', ismerchant: false),
    UserInfo(nameofuser: 'Suraj m', ismerchant: false),
    UserInfo(nameofuser: 'Vishnu m', ismerchant: false),
    UserInfo(nameofuser: 'Akhil c', ismerchant: false),
    UserInfo(nameofuser: 'Abhirag pn', ismerchant: false),
  ];
}

class UserInfo extends ChangeNotifier {
  late String nameofuser;
  late bool ismerchant;
  bool ispaid = false;
  late double totalamound = 0;
  List<ItemBill>? listofitem=[];
  List<BillCards>? billhistory = [];
  UserInfo({
    required this.nameofuser,
    required this.ismerchant,
  });
}

class BillCards {
  List<ItemBill> itemlist = [];
  BillCards({required this.itemlist});
}

class ItemBill {
  late String itemname;
  late String itemprice;
  ItemBill({required this.itemname, required this.itemprice});
}
