import 'package:flutter/material.dart';
import 'package:grocery_shop_flutter/components/app_theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_flutter/components/assets_app.dart';
import 'package:grocery_shop_flutter/pages/home_page.dart';

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
          child: ImageIntro.asset(),
        ),
         Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text('We deliver groceries at your doorstep', textAlign: TextAlign.center, style: GoogleFonts.notoSerif(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10),
        Text('Fresh items everyday', style: TextStyle(fontSize: 18, color: TextColor.secondaryColor),),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => const HomePage()));
          },
          child: Container(
            decoration: BoxDecoration(
              color: ButtonColor.primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(24),
            child: Text('Get Started', style: TextStyle(color: TextColor.primaryColor),),
          ),
        ),
        const Spacer(),
      ],
     ),
    );
  }
}