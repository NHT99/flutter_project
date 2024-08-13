import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/components/shoes_tile.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'package:sneaker_shop/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addItemToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                'Successfully added!',
                style: TextStyle(color: Colors.grey[800]),
              ),
              content: Text('Check your cart',
                  style: TextStyle(color: Colors.grey[800])),
              backgroundColor: Colors.grey[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Search'),
                      Icon(
                        Icons.search,
                        color: Colors.grey[700],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    'let fly everyone .... some fly longer than others',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Hot Picks🔥",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text('See all',
                          style: TextStyle(
                              color: Colors.blue[800],
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                //list of shoe
                Expanded(
                    child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          Shoe shoe = value.getListShoe()[index];
                          return ShoesTile(
                            shoe: shoe,
                            onAddItem: () => addItemToCart(shoe),
                          );
                        })),

                const Padding(
                  padding: EdgeInsets.only(top: 35.0, left: 25, right: 25),
                  child: Divider(
                    color: Colors.transparent,
                  ),
                )
              ],
            ));
  }
}
