import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final colorListCard;

  const GroceryItemTile({super.key, required this.itemName, required this.itemPrice, required this.imagePath, required this.colorListCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: colorListCard,
      borderRadius: BorderRadius.circular(12)
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Image.asset(imagePath, height: 64,
            ),
            Text(itemName),

            MaterialButton(onPressed: () {},
            color: colorListCard,
            child: Text('\$$itemPrice', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            )
          ],
        ),
      ),
    );
  }
}