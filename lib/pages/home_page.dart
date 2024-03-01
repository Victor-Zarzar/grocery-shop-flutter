import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_flutter/components/grocery_items_tile.dart';
import 'package:grocery_shop_flutter/model/cart_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 48),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text("Good morning,"),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text("Let's order fresh items for you", style: GoogleFonts.notoSerif(fontSize: 36, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal:24.0),
            child: Divider(
              thickness: 4,
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal:24.0),
            child: Text("Fresh items", style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
            child: Consumer<CartModel>(builder: (context, value, child) {
              return GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) {
                return GroceryItemTile(itemName: value.shopItems[index][0],
                itemPrice: value.shopItems[index][1],
                imagePath: value.shopItems[index][2],
                color: value.shopItems[index][3],
                );
              },);
            }
            ),
          ),
        ],
      )),
    );
  }
}