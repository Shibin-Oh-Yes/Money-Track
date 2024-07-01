import 'package:flutter/material.dart';
import 'package:moneytrack/backend/transaction.dart';
import 'package:moneytrack/backend/user_details.dart';
import 'package:moneytrack/values/colours.dart';
import 'package:moneytrack/widgets/profilebar.dart';
import 'package:moneytrack/widgets/service_icon.dart';
import 'package:moneytrack/widgets/user_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.cusormer, required this.whichuser});

  final bool cusormer;
  final UserDetails whichuser;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UserInfo> curentlist = UserList.currentusers;
  @override
  Widget build(BuildContext context) {
    double listSize = (curentlist.length + 1) * 90;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            ProfileBar(
              whichuser:widget.whichuser,
              isNotien: true,
            ),
            Expanded(
                child: ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height * .25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            ColorPalette.primaryclr,
                            ColorPalette.primaryclr,
                            ColorPalette.primaryclr,
                            const Color.fromARGB(255, 38, 156, 77)
                          ])),
                  child:  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.credit_card_rounded,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Your total dept',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ],
                      ),
                      Text(
                        "\u{20B9} 250.00",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      // Text(
                      //   'Your today\'s dept',
                      //   style: TextStyle(
                      //       color: Colors.white,
                      //       fontSize: 16,
                      //       fontWeight: FontWeight.w300),
                      // ),
                      Divider(color: Colors.white,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\u{20B9} 25.00",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.arrow_circle_up,color: Colors.white,),
                          Text(
                            "\u{20B9} 25.00",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.arrow_circle_down,color: Colors.white,)
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  width: double.maxFinite,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Other Service',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ServiceIcon(
                            iconClr: Colors.amber,
                            iconName: 'Transfer',
                            serviceIcon: Icons.swap_vert,
                          ),
                          ServiceIcon(
                            iconClr: Colors.green,
                            iconName: 'History',
                            serviceIcon: Icons.history_rounded,
                          ),
                          ServiceIcon(
                              iconClr: Colors.red,
                              iconName: 'Notify',
                              serviceIcon: Icons.notifications_active_rounded),
                          ServiceIcon(
                              iconClr: Colors.deepPurple,
                              iconName: 'Limit',
                              serviceIcon: Icons.attach_money_sharp)
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Transactions',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: listSize,
                  child: Expanded(
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: curentlist.length,
                      itemBuilder: (BuildContext context, int index) {
                        var user = curentlist[index];
                        return UserTile(
                            userName: user.userName, isIn: user.inorout);
                      },
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      )),
    );
  }
}