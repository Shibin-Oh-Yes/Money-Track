
import 'package:flutter/material.dart';
import 'package:moneytrack/values/colours.dart';

class MyTextField extends StatefulWidget {
   MyTextField({super.key, required this.hintxt,this.isob=false,required this.txtFun});
   
  final String hintxt;
  final bool isob;
  Function txtFun;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  final mycontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {

    widget.txtFun(mycontroller.text);

    return  SizedBox(
      child: TextField(
        controller: mycontroller,
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