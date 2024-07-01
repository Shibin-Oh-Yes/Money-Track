import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moneytrack/pages/login_page.dart';
import 'package:moneytrack/widgets/elevated_button.dart';

class MyIntroPage extends StatelessWidget {
  const MyIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * .5,
              child: SvgPicture.asset(
                'asset/image/introbg.svg',
                fit: BoxFit.contain,
              ),
            ),
             Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Make your Dept \n Consistent & Secure',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'We provide an abstract way for make your dept\Experiense the awesome user interface \n with us',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20,),
                MyElevatedButton(elvtext: 'Continue',elvfun: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
                },)
              ],
            ))
          ],
        ),
      )),
    );
  }
}
