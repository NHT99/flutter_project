import 'package:ecommerce/components/button.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo

            Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),
            //title
            const Text(
              "Jv Shop",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            //subtitle
            Text(
              'Premium Quality Shop',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            //
            //button
            const SizedBox(
              height: 25,
            ),
            Button(onTap: () => Navigator.pushNamed(context, '/shop_page'), child: const Icon(Icons.arrow_forward))
          ],
        ),
      ),
    );
  }
}
