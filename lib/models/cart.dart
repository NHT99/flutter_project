import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  //List shoe
  List<Shoe> shoeList = [
    Shoe(
        name: "Air Jordan",
        price: '240',
        imagePath: 'lib/images/chakhdi.jpg',
        description: "This is a nice shoe"),
    Shoe(
        name: 'Zoom FREAK',
        price: '236',
        imagePath: 'lib/images/customnike.png',
        description:
            'The forward-thinking design of his latest signature shoe.'),
    Shoe(
        name: 'Air Jordans',
        price: '220',
        imagePath: 'lib/images/dainese.jpg',
        description: 'Combine comfort and durability.'),
    Shoe(
        name: 'Dainese Motobike',
        price: '180',
        imagePath: 'lib/images/dainese2.jpg',
        description: 'Ensuring optimal performance in any weather condition.'),
    Shoe(
        name: 'Dainese Boots',
        price: '280',
        imagePath: 'lib/images/dainese3.jpg',
        description: 'Perforated fabric and large stretch panels.')
  ];
  //list in user cart
  List<Shoe> userCart = [];
  //get list shoe
  List<Shoe> getListShoe() {
    return shoeList;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add shoe to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove shoe from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
