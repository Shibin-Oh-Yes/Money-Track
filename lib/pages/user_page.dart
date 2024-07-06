import 'package:flutter/material.dart';
import 'package:moneytrack/backend/transaction.dart';
import 'package:moneytrack/pages/addpage.dart';
import 'package:moneytrack/values/colours.dart';

class UserPage extends StatefulWidget {
  final String chatname;
  const UserPage({super.key, required this.chatname, required this.billhis});
  final List<ItemBill>? billhis;
  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final chatcontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    chatcontroller.dispose();
  }

  late List<ItemBill> newlist;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 219, 219),
      appBar: AppBar(
        backgroundColor: ColorPalette.primaryclr,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
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
        child: ListView.builder(
          itemBuilder: (context, index) {
           ItemBill billchat=widget.billhis[index]; 
                      return Tiledept(name: billchat.itemname, price: billchat.itemprice);
          },
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: double.maxFinite,
        height: 110,
        color: const Color.fromARGB(255, 240, 240, 240),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Addpage()));
                  },
                  label: const Text(
                    'To get',
                    style: TextStyle(color: Colors.green),
                  ),
                  icon: const Icon(
                    Icons.arrow_downward,
                    color: Colors.green,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Addpage(
                                  istopay: true,
                                )));
                  },
                  label:
                      const Text('To pay', style: TextStyle(color: Colors.red)),
                  icon: const Icon(
                    Icons.arrow_upward,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            // MyTextField(
            //   hintxt: 'Message',
            //   ctrl: chatcontroller,
            // )
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 50,
                  width: (MediaQuery.of(context).size.width) - 90,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Type message..',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                IconButton.filled(
                    onPressed: () {},
                    icon: const Icon(Icons.send),
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 14, 131, 102)),
                        fixedSize: WidgetStatePropertyAll(Size(50, 50))))
              ],
            )
          ],
        ),
      ),
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
