class UserInfo{
   late final String userName;
   late final double dept;
   late bool inorout;
  UserInfo({required this.userName,required this.dept,required this.inorout});
}

 class UserList{
static  List<UserInfo> currentusers=[
    UserInfo(userName: 'Shibin suresh', dept: 230.0,inorout: true),
    UserInfo(userName: 'Akhil c', dept: 230.0,inorout: false),
    UserInfo(userName: 'Abhirag pn', dept: 230.0,inorout: true),
    UserInfo(userName: 'Rashid Kp', dept: 230.0,inorout: false),
    UserInfo(userName: 'Suraj M', dept: 230.0,inorout: true),
    UserInfo(userName: 'Vishnu M', dept: 230.0,inorout: false),
  ];
}