import 'package:ecommerce/controllers/shop.dart';
import 'package:ecommerce/pages/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Shop()),
      ],
      child: const App(),
    ),
  );
}
