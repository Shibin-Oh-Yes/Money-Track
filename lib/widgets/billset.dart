import 'package:flutter/material.dart';
import 'package:moneytrack/backend/transaction.dart';

class BillSet extends StatelessWidget {
  const BillSet({
    super.key, required this.itemhis,
  });

  final List<ItemBill>? itemhis;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text('monday 12 jan'),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          width: double.maxFinite,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: ListView.separated(itemBuilder: (context, index) => Text('data'), separatorBuilder: (context, index) => Divider(), itemCount:1),
        ),
      ],
    );
  }
}
