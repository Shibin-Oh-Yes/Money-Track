class UserInfo {
  late final String userName;
  late final double dept;
  late bool inorout;
  late List<BillHistory>? userbillhis=[];
  UserInfo({required this.userName, required this.dept, required this.inorout,required this.userbillhis});
}

class UserList {
  static List<UserInfo> currentusers = [
    UserInfo(userName: 'Shibin suresh', dept: 230.0, inorout: true,userbillhis: []),
    UserInfo(userName: 'Akhil c', dept: 230.0, inorout: false,userbillhis: []),
    UserInfo(userName: 'Abhirag pn', dept: 230.0, inorout: true,userbillhis: []),
    UserInfo(userName: 'Rashid Kp', dept: 230.0, inorout: false,userbillhis: []),
    UserInfo(userName: 'Suraj M', dept: 230.0, inorout: true,userbillhis: []),
    UserInfo(userName: 'Vishnu M', dept: 230.0, inorout: false,userbillhis: []),
  ];
}

class ItemBill{
  late String itemname;
  late String itemprice;
  ItemBill({required this.itemname, required this.itemprice});
}

class BillHistory{
  List<ItemBill>? itemlist=[]; 
}

class UserDeptHistory{
  List<BillHistory>? userdept=[];
  late double totaldept;
}