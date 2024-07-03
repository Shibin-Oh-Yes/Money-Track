import 'package:flutter/material.dart';
import 'package:moneytrack/pages/user_page.dart';

class BillSet extends StatelessWidget {
  const BillSet({
    super.key,
    required this.deptprice,
    required this.deptlistname,
  });

  final List<double> deptprice;
  final List deptlistname;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text('monday 12 jan'),
        ),
        Container(
          padding: const EdgeInsets.all( 15),
          width: double.maxFinite,
          height: 40*(deptprice.length.toDouble()),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: ListView.separated(
                itemBuilder: (context,index) => Tiledept(
                    name: deptlistname[index], price: deptprice[index]),
                separatorBuilder: (context, index) => Divider(
                  color: Colors.black12,
                ),
                itemCount: deptlistname.length),
          ),
        ),
      ],
    );
  }
}