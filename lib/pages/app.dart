import 'package:ecommerce/config/routes.dart';
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
    return  MaterialApp.router(
      theme: lightMode,
      routerConfig: goRouter,
    );
  }
}