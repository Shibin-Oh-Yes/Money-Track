
import 'package:flutter/material.dart';
import 'package:moneytrack/values/colours.dart';

class MyTextField extends StatefulWidget {
   const MyTextField({super.key, required this.hintxt,this.isob=false,required this.ctrl});
   
  final String hintxt;
  final bool isob;
  final TextEditingController ctrl;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {


  @override
  Widget build(BuildContext context) {


    return  SizedBox(
      child: TextField(
        controller: widget.ctrl,
        obscureText: widget.isob,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: ColorPalette.primaryclr)
          ),
          hintText: widget.hintxt,
          border:const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))
          )
        ),
      ),
    );
  }
}