import 'package:flutter/material.dart';
import 'package:grocery_shop_flutter/components/app_theme.dart';

class CartModel extends ChangeNotifier {

  final List _shopItems = [
    ["Avocado", "4.00", "lib/assets/images/avocado.png", ItemsColors.primaryColor],
    ["Banana", "2.50", "lib/assets/images/banana.png", ItemsColors.secondaryColor],
    ["Chicken", "12.80", "lib/assets/images/chicken.png", ItemsColors.thirdColor],
    ["Water", "1.00", "lib/assets/images/water.png", ItemsColors.fourthColor],

  ];

  get shopItems => _shopItems;
}