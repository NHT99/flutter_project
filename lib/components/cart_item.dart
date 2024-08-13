import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'package:sneaker_shop/models/shoe.dart';

class CartItem extends StatefulWidget {
  CartItem({super.key, required this.shoe});
  Shoe shoe;
  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  
void removeItemFromCart() {
  Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
          leading: Image.asset(
            widget.shoe.imagePath,
          ),
          title: Text(widget.shoe.name),
          subtitle: Text(widget.shoe.price),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: removeItemFromCart,
          )),
    );
  }
}
