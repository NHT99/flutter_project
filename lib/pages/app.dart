import 'package:ecommerce/pages/cart_page.dart';
import 'package:ecommerce/pages/intro_page.dart';
import 'package:ecommerce/pages/shop_page.dart';
import 'package:ecommerce/theme/light_theme.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page' : (context) =>const IntroPage(),
        '/shop_page' : (context) => const ShopPage(),
        '/cart_page' : (context) => const CartPage(),
      },
      
    );
  }
}