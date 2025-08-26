
import 'package:flutter/material.dart';

import 'home_screen.dart' show HomeScreen;



class splash_screen extends StatefulWidget {
  static const String splashScreenRoute = '/splash'; // بيبدأ بـ /

  @override
  State<splash_screen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/whatsapp_splash.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

