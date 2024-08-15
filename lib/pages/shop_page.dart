import 'package:ecommerce/widgets/custom_drawer.dart';
import 'package:ecommerce/widgets/product_tile.dart';
import 'package:ecommerce/controllers//shop.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../config/route_path.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Shop>(
      create: (_) => Shop(),
      builder: (context, child) {
        final products = context.watch<Shop>().listProduct;
        return Scaffold(
            appBar: AppBar(
              title: const Text('Shop Page'),
              backgroundColor: Colors.transparent,
              elevation: 0,
              foregroundColor: Theme.of(context).colorScheme.inversePrimary,
              actions: [
                IconButton(
                    onPressed: () => context.go(RoutePath.cartPage),
                    icon: const Icon(Icons.shopping_cart_checkout))
              ],
            ),
            drawer: const CustomDrawer(),
            backgroundColor: Theme.of(context).colorScheme.surface,
            body: ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                //shop title
                Center(
                  child: Text(
                    'Pick from a selected list of premium products',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ),

                //shop subtitle

                //product list
                SizedBox(
                  height: 550,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return ProductTile(product: product);
                    },
                  ),
                ),
              ],
            ));
      },
    );
  }
}
