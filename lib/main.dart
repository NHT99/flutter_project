import 'package:flutter/material.dart';
import 'package:navigation/page/first_page.dart';
import 'package:navigation/page/home_page.dart';
import 'package:navigation/page/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
      routes: {
        '/firstpage' : (context) => FirstPage(),
        '/homepage' : (context) => HomePage(),
        '/settingpage' : (context) => SettingPage(),
      },
    );
  }
}
