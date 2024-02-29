import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 48),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text("Good morning,"),
          ),
          Text("Let's order fresh items for you")
        ],
      )),
    );
  }
}