import 'dart:ffi';

import 'package:flutter/material.dart';

class UserInfo {
  late final String userName;
  late final double dept;
  late bool inorout;
  UserInfo({required this.userName, required this.dept, required this.inorout});
}

class UserList {
  static List<UserInfo> currentusers = [
    UserInfo(userName: 'Shibin suresh', dept: 230.0, inorout: true),
    UserInfo(userName: 'Akhil c', dept: 230.0, inorout: false),
    UserInfo(userName: 'Abhirag pn', dept: 230.0, inorout: true),
    UserInfo(userName: 'Rashid Kp', dept: 230.0, inorout: false),
    UserInfo(userName: 'Suraj M', dept: 230.0, inorout: true),
    UserInfo(userName: 'Vishnu M', dept: 230.0, inorout: false),
  ];
}

class Bills {
  late final String item;
  late final double price;
//  late final String imgname;
  Bills({required this.item, required this.price});
}
class CustomerBill{
  List<Bills> billslist=[];
  bool ispayd=false;
  void addToBill(itemname,itemprice) async {
    Bills newbill= Bills(item: itemname, price: itemprice);
    billslist.add(newbill);
  }
}
class BillHistory{
  List<CustomerBill> billhistory=[];
  void addHistory(value)async{
    billhistory.add(value);
  }

}