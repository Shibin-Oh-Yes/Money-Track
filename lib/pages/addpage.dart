import 'package:flutter/material.dart';
import 'package:moneytrack/backend/user_details.dart';

class Addpage extends StatefulWidget {
  const Addpage({super.key});

  @override
  State<Addpage> createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
  ItemList newlist = ItemList();
  final myctlr1 = TextEditingController();
  final myctlr2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.maxFinite,
                height: 100,
                child: TextField(
                  controller: myctlr1,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                      fontSize: 50, fontWeight: FontWeight.w900),
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "\u{20B9} 0",
                      hintStyle: TextStyle(fontSize: 60)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(19, 27, 158, 141),
                    borderRadius: BorderRadius.circular(10)),
                height: 50,
                width: MediaQuery.of(context).size.width * .5,
                child: TextField(
                  controller: myctlr2,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Name',
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextButton.icon(
                onPressed: () {
                  // newlist.addtolist(myctlr1.text, myctlr2.text);
                  // setState(() {});
                },
                label: const Text('Add to list'),
                icon: const Icon(Icons.arrow_circle_down_outlined),
              ),
              SizedBox(
                  width: double.maxFinite,
                  height: 25,
                  child: ListView.builder(
                    itemBuilder: (context, index) => ListCard(
                        data: newlist.foodlist[index].name,
                        data1: newlist.foodlist[index].price),
                    itemCount: newlist.foodlist.length,
                  ))
            ],
          ),
        ),
      )),
    );
  }
}

class ListCard extends StatelessWidget {
  const ListCard({super.key, required this.data, required this.data1});

  final String data;
  final String data1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(data), Text(data1)],
    );
  }
}
