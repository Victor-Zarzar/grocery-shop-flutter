import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 80.0, right: 80, bottom: 40, top: 160),
          child: Image.asset('lib/assets/images/avocado.png'),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text('We deliver groceries at your doorstep', textAlign: TextAlign.center, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        Text('Fresh items everyday'),
        Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(24),
          child: Text('Get Started', style: TextStyle(color: Colors.white),),
        )
      ],
     ),
    );
  }
}