import 'package:flutter/material.dart';
import 'package:moneytrack/backend/user_details.dart';
import 'package:moneytrack/pages/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MoneyTrack',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: HomePage(cusormer: true, whichuser:UserDetails()),//UserPage(chatname: "Shubu"),
    );
  }
}
