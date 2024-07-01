import 'package:flutter/material.dart';

class ServiceIcon extends StatelessWidget {
  const ServiceIcon({super.key, required this.iconClr, required this.iconName, required this.serviceIcon});
  final String iconName;
  final MaterialColor iconClr ;
  final IconData serviceIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color:iconClr[100]
          ),
          width: 55,
          height: 55,
          child:  Center(child: IconButton(onPressed: (){} ,icon:  Icon(serviceIcon,color:iconClr[900],size: 30,),)),
        ),
        const SizedBox(height: 5,),
         Text(iconName)
      ],
    );
  }
}