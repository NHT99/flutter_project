import 'package:ecommerce/components/button.dart';
import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeItemFromCart(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text('Remove this item from your cart?'),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          MaterialButton(
            onPressed: () => {
              Navigator.pop(context),
              context.read<Shop>().removeItemFromCart(product)
            },
            child: const Text("Yes"),
          )
        ],
      ),
    );
  }

  void payCart(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        content: Text("Connect app to your payment"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().userCart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Cart Page'),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: <Widget>[
          //car list
          Expanded(
              child: cart.isEmpty
                  ? const Text("Your cart is empty..")
                  : ListView.builder(
                      itemCount: cart.length,
                      itemBuilder: (context, index) {
                        final item = cart[index];
                        return ListTile(
                          title: Text(item.name),
                          subtitle: Text(item.price.toStringAsFixed(2)),
                          trailing: IconButton(
                              onPressed: () =>
                                  removeItemFromCart(context, item),
                              icon: const Icon(Icons.delete)),
                        );
                      },
                    )),

          //pay button
          cart.isEmpty
              ? Container()
              : Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: Button(onTap: () => payCart, child: const Text("Pay Now")),
                )
        ],
      ),
    );
  }
}
