import 'package:flutter/material.dart';
import 'package:moneytrack/values/colours.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({super.key, required this.elvtext, required this.elvfun});

  final String elvtext;
  final Function elvfun;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: () {
          elvfun();
        },
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
            backgroundColor: WidgetStatePropertyAll(ColorPalette.primaryclr)),
        child: Text(
          elvtext,
          style: const TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
