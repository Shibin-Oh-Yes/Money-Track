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
          height: 35*itemhis!.length.toDouble(),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: ListView.separated(itemBuilder: (context, index){
            ItemBill food=itemhis![index];
            return Tiledept(name: food.itemname, price:food.itemprice);
          } , separatorBuilder: (context, index) => const Divider(), itemCount:1),
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
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(widget.name), Text("Quantity:$quantity")],
        ),
        Text("\u{20B9} ${widget.price}")
      ],
    );
  }
}
