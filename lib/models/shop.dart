import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  // product for sale

  final List<Product> _listProduct = [
    Product(name: "Product 1 ", description: "This is product 1", price: 201),
    // imagePath: "imagePath")
    Product(name: "Product 2 ", description: "This is product 2", price: 153),
    Product(name: "Product 3 ", description: "This is product 3", price: 221),
    Product(name: "Product 4", description: "This is product 4", price: 305),
  ];
  // user cart
  List<Product> _userCart = [];
  // get product list
  List<Product> get listProduct => _listProduct;
  // get usercart
  List<Product> get userCart => _userCart;
  // add item to cart
  void addToCart(Product item) {
    _userCart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Product item) {
    _userCart.remove(item);
    notifyListeners();
  }
}

// Shop({

// })
