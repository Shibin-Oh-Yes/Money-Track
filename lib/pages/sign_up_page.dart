import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:moneytrack/backend/user_details.dart';
import 'package:moneytrack/pages/home_page.dart';
import 'package:moneytrack/values/colours.dart';
import 'package:moneytrack/widgets/elevated_button.dart';
import 'package:moneytrack/widgets/my_text_field.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late String temail;

  late String pass;

  late String repass;

  late String proname;

  String? grpname;

//made an object of user details class

  UserDetails user = UserDetails();
  late bool iscusomter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //       onPressed: () {
      //         Navigator.pop(context);
      //       },
      //       icon: const Icon(Icons.arrow_back_ios)),
      //   actions: [
      //     IconButton(
      //         onPressed: () {
      //           Navigator.pop(context);
      //         },
      //         icon: const Icon(
      //           Icons.info,
      //           color: Colors.grey,
      //         )),
      //   ],
      // ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                Text(
                  "Sign Up!",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: ColorPalette.primaryclr),
                ),
              ],
            ),
            const Text(
                'Make your dept consistant and secure\nEnjoy our new features and best user interfaces'),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
              hintxt: 'Full Name',
              txtFun: (String value) {
                proname = value;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            MyTextField(
              hintxt: 'Email',
              txtFun: (String value) {
                temail = value;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            MyTextField(
              hintxt: 'Password',
              txtFun: (String value) {
                pass = value;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            MyTextField(
              hintxt: 'Re-type Password',
              txtFun: (String value) {
                repass = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              title: const Text('Customer Login'),
              subtitle: const Text(
                  'Login as a customer allows you to store dept and some necessary notes'),
              trailing: Radio(
                  value: 'customer',
                  groupValue: grpname,
                  onChanged: (value) {
                    grpname = 'customer';
                    iscusomter = true;
                    setState(() {});
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              title: const Text('Merchant Login'),
              subtitle: const Text(
                  'Login as a merchant gives you some additonal features like edit menu'),
              trailing: Radio(
                  value: 'merchant',
                  groupValue: grpname,
                  onChanged: (value) {
                    grpname = 'merchant';
                    iscusomter = false;
                    setState(() {});
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            MyElevatedButton(
                elvtext: 'Sign-Up',
                elvfun: () {
                  if (proname.isNotEmpty && temail.isNotEmpty) {
                    user.email = temail;
                    user.profilename = proname;
                    // log(user.email);
                    // log(user.profilename);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage(
                                  cusormer: iscusomter,
                                  whichuser: user,
                                )));
                  }
                })
          ],
        ),
      )),
    );
  }
}
