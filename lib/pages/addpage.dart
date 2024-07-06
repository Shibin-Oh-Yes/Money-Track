
import 'package:flutter/material.dart';
import 'package:moneytrack/widgets/elevated_button.dart';

class Addpage extends StatefulWidget {
  const Addpage({super.key,this.istopay=false});

  final bool istopay;

  @override
  State<Addpage> createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
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
            children: [
                Container(
                  color:Colors.amber,
                  width: double.maxFinite,
                  height:MediaQuery.of(context).size.height/5,
                ),
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
                },
                label: const Text('Add to list'),
                icon: const Icon(Icons.arrow_circle_down_outlined),
              ),
            
            ],
          ),
        ),
      )),
      bottomSheet:Padding(padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
      child: MyElevatedButton(elvtext: 'Add', elvfun: (){}),),
    );
  }
}

class ListCard extends StatefulWidget {
  const ListCard({super.key, required this.data, required this.data1});

  final String data;
  final String data1;

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(widget.data), Text(widget.data1)],
    );
  }
}
