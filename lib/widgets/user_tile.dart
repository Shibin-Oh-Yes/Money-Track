import 'package:flutter/material.dart';
import 'package:moneytrack/backend/transaction.dart';
import 'package:moneytrack/pages/user_page.dart';

class UserTile extends StatelessWidget {
  const UserTile({super.key,required this.userInfo});

  final UserInfo userInfo;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>UserPage(thisuser: userInfo)) );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: double.maxFinite,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage:AssetImage('asset/image/proimage.jpeg'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        userInfo.nameofuser,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                       (userInfo.totalamound>0?"To get":"To pay"),
                        style: TextStyle(color: whichclr(userInfo.totalamound)),
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                cashForTile(userInfo.totalamound),
                const Text('21/02/2024',)
              ],
            )
          ],
        ),
      ),
    );
  }
}



Widget cashForTile(double value){
  if(value>0){
    return Text("+ \u{20B9} $value",style: const TextStyle(color: Colors.green),);
  }
  else {
    if(value<0){
      return Text("- \u{20B9} $value",style: const TextStyle(color: Colors.red),);
    }
    else{
      return Text("\u{20B9} $value",style: const TextStyle(color: Colors.grey),);
    }
  }
}

Color whichclr(double value){
  if(value>0){
    return Colors.green;
  }
  else if(value<0){
    return Colors.red;
  }
  else{
    return Colors.grey;
  }
}