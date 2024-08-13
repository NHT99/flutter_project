import 'package:ecommerce/models/shop.dart';
import 'package:ecommerce/pages/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const App(),
  ));
}
