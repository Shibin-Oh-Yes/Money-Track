import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:moneytrack/backend/transaction.dart';
import 'package:moneytrack/pages/addpage.dart';
import 'package:moneytrack/values/colours.dart';
import 'package:moneytrack/widgets/billset.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key, required this.thisuser});

  final UserInfo thisuser;

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
          widget.thisuser.nameofuser,
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
          itemCount: widget.thisuser.billhistory?.length,
          itemBuilder: (context, index) {
            return BillSet(
                itemhis: widget.thisuser.billhistory?[index].itemlist);
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
                            builder: (context) => Addpage(
                                  listpass: (value) {
                                    var newitem = BillCards(itemlist: value);
                                    widget.thisuser.billhistory?.add(newitem);
                                    Navigator.pop(context);
                                    setState(() {});
                                  },
                                )));
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
                            builder: (context) => Addpage(
                                  istopay: true,
                                  listpass: (List<ItemBill> value) {
                                  
                                    

                                    var newitem = BillCards(itemlist: value);
                                    log(newitem.itemlist.toString());
                                    widget.thisuser.billhistory!.add(newitem);
                                    setState(() {});
                                  },
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
