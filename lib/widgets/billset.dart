import 'package:flutter/material.dart';
import 'package:moneytrack/backend/transaction.dart';

class BillSet extends StatelessWidget {
  const BillSet({
    super.key,
    required this.itemhis,
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
          height: 45 * itemhis!.length.toDouble(),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Tiledept(
                    name: itemhis![index].itemname,
                    price: itemhis![index].itemprice);
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: itemhis!.length),
        ),
      ],
    );
  }
}

class Tiledept extends StatefulWidget {
  const Tiledept({
    super.key,
    required this.name,
    required this.price,
  });

  final String name;
  final String price;

  @override
  State<Tiledept> createState() => _TiledeptState();
}

class _TiledeptState extends State<Tiledept> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(widget.name), Text("\u{20B9} ${widget.price}")],
    );
  }
}
