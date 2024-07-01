
import 'package:flutter/material.dart';
import 'package:moneytrack/backend/user_details.dart';
import 'package:moneytrack/values/colours.dart';

// ignore: must_be_immutable
class ProfileBar extends StatefulWidget {
   ProfileBar({
    super.key,
    required this.isNotien, required this.whichuser
  });

   bool isNotien=false;
   final UserDetails whichuser;
  @override
  State<ProfileBar> createState() => _ProfileBarState();
}

class _ProfileBarState extends State<ProfileBar> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height*.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.lightBlueAccent,
              ),
              const SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text('Hi,${widget.whichuser.profilename}',style: TextStyle(fontSize: 16),),
                  Text('Welcome',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: ColorPalette.primaryclr),)
                ],
              )
            ],
          ),
          Stack(
            children: [Container(
              decoration: BoxDecoration(
                border:Border.all(width: 2,color: Colors.grey),
                borderRadius: BorderRadius.circular(30)
              ),
              width: 70,
              height: 45,
              child: Center(
                child: IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none_sharp)),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Icon(Icons.circle,color: widget.isNotien?Color.fromARGB(255, 0, 134, 56):Colors.transparent,size: 20,))
            ]
          )
        ],
      ),
    );
  }
}
