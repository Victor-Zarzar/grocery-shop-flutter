import 'package:flutter/material.dart';
import 'package:grocery_shop_flutter/model/cart_model.dart';
import 'package:grocery_shop_flutter/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return ChangeNotifierProvider(
    create: (context) => CartModel(),
    child: MaterialApp(
      title: 'Grocery Shop App',
      theme: ThemeData(
      useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
    ),
   );

}

}