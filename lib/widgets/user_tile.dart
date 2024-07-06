import 'package:flutter/material.dart';
import 'package:moneytrack/pages/user_page.dart';

class UserTile extends StatelessWidget {
  const UserTile({super.key, required this.userName, required this.isIn, required this.billhistory});
  final String userName;
  final bool isIn;
  final List? billhistory;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //Navigator.push(context, MaterialPageRoute(builder: (context)=>UserPage(chatname: userName,,)) );
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
                        userName,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        isIn ? "Send Money" : "Cashout",
                        style: TextStyle(color: isIn ? Colors.green : Colors.red),
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
                cashForTile('24.0', isIn),
                const Text('21/02/2024',)
              ],
            )
          ],
        ),
      ),
    );
  }
}



Widget cashForTile(String value,bool isInc){
  if(isInc==true ){
    return Text("+ \u{20B9} $value",style: const TextStyle(color: Colors.green),);
  }
  else {
    return Text("- \u{20B9} $value",style: const TextStyle(color: Colors.red),);
  }
}