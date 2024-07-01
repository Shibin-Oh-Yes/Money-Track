import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moneytrack/backend/user_details.dart';
import 'package:moneytrack/pages/home_page.dart';
import 'package:moneytrack/pages/sign_up_page.dart';
import 'package:moneytrack/values/colours.dart';
import 'package:moneytrack/widgets/elevated_button.dart';
import 'package:moneytrack/widgets/my_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String email;
  late String pass;
  UserDetails user=UserDetails();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView(
            children: [
              const SizedBox(height: 10,),
             Center(child: Text('Login',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: ColorPalette.primaryclr),)),
              SvgPicture.asset(
                'asset/image/loginbg.svg',
                fit: BoxFit.contain,
                height: MediaQuery.of(context).size.height / 2,
              ),
              SizedBox(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * .26,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyTextField(
                      hintxt: 'Email',
                      txtFun: (String value) {
                        email = value;
                      },
                    ),
                    MyTextField(
                      hintxt: 'Password',
                      txtFun: (value) {
                        pass = value;
                      },
                      isob: true,
                    ),
                    MyElevatedButton(
                        elvtext: 'Login',
                        elvfun: () {
                          if (email.isNotEmpty && pass.isNotEmpty) {
                            log(email);
                            log(pass.toString());
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage(cusormer: true,whichuser: user,)));
                          };
                          
                        })
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                  }, child: const Text('Sing-Up',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),))
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
