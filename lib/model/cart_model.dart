import 'package:flutter/material.dart';
import 'package:grocery_shop_flutter/components/app_theme.dart';

class CartModel extends ChangeNotifier {

  final List _shopItems = [
    ["Avocado", "4.00", "lib/assets/images/avocado.png", ItemsColors.primaryColor],
    ["Banana", "2.50", "lib/assets/images/banana.png", ItemsColors.secondaryColor],
    ["Chicken", "12.80", "lib/assets/images/chicken.png", ItemsColors.thirdColor],
    ["Water", "1.00", "lib/assets/images/water.png", ItemsColors.fourthColor],

  ];

  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;
  
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemToCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();  
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }




}