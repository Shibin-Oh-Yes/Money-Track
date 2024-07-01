import 'package:flutter/material.dart';

class Logintype extends StatefulWidget {
  const Logintype({super.key, required this.typehead, required this.typesub});

  final String typehead;
  final String typesub;

  @override
  State<Logintype> createState() => _LogintypeState();
}

class _LogintypeState extends State<Logintype> {
  bool checkvalue = false;
  late String grpvalue;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.typehead),
      subtitle: Text(widget.typesub),
      trailing: Radio(
        value: 'customer',
        groupValue: grpvalue,
        onChanged: (value) {
          grpvalue='customer';
          setState(() {});
        },
      ),
    );
  }
}
