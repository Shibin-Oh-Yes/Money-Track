import 'package:flutter/material.dart';
import 'package:moneytrack/backend/user_details.dart';
import 'package:moneytrack/values/colours.dart';

// ignore: must_be_immutable
class ProfileBar extends StatefulWidget {
  ProfileBar({super.key, required this.isNotien, required this.whichuser});

  bool isNotien = false;
  final UserDetails whichuser;
  @override
  State<ProfileBar> createState() => _ProfileBarState();
}

class _ProfileBarState extends State<ProfileBar> {
  Future openDialog() => showDialog(
      context: context,
      builder: (context) {
        String proname = 'Jhane doe';
        return AlertDialog(
          title: const Text(
            'Edit profile',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          content: Row(
            crossAxisAlignment:CrossAxisAlignment.end,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('asset/image/proimage.jpeg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10),
                    color: ColorPalette.primaryclr),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                    width: 170,
                    height: 50,
                    child: TextField(
                     // maxLength: 15,
                      decoration: InputDecoration(
                        hintStyle: const TextStyle(color: Colors.black),
                          hintText: proname,
                          suffixIcon: const Icon(
                            Icons.edit,
                            size: 20,
                          )),
                    )),
              ),
            ],
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancell'),
                ),
                FilledButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(ColorPalette.primaryclr)),
                  child: const Text(
                    'Save',
                  ),
                ),
              ],
            )
          ],
        );
      });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height * .1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  openDialog();
                },
                child: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.lightBlueAccent,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi,${widget.whichuser.profilename}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const Text(
                    'Welcome back!',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: ColorPalette.primaryclr),
                  )
                ],
              )
            ],
          ),
          Stack(children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(30)),
              width: 70,
              height: 45,
              child: Center(
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none_sharp)),
              ),
            ),
            Positioned(
                right: 0,
                top: 0,
                child: Icon(
                  Icons.circle,
                  color: widget.isNotien
                      ? const Color.fromARGB(255, 0, 134, 56)
                      : Colors.transparent,
                  size: 20,
                ))
          ])
        ],
      ),
    );
  }
}
