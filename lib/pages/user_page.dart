import 'package:flutter/material.dart';
import 'package:moneytrack/values/colours.dart';
import 'package:moneytrack/widgets/billset.dart';

class UserPage extends StatefulWidget {
  final String chatname;
  const UserPage({super.key, required this.chatname});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List deptlistname = ['puttu', 'chaya', 'curry','parippu vada'];

  List<double> deptprice = [16, 10, 15,8];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 219, 219),
      appBar: AppBar(
        backgroundColor: ColorPalette.primaryclr,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        title: Text(
          widget.chatname,
          style: const TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              )),
        ],
      ),
      body: Container(
        
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            BillSet(deptprice: deptprice, deptlistname: deptlistname),
             BillSet(deptprice: deptprice, deptlistname: deptlistname)
          ],
        ),
      ),
    );
  }
}



class Tiledept extends StatelessWidget {
  const Tiledept({
    super.key,
    required this.name,
    required this.price,
  });

  final String name;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(name), Text("\u{20B9} $price")],
    );
  }
}
