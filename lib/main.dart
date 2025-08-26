import 'package:flutter/material.dart';
import 'package:whatsapp_project/splash_screen.dart' show splash_screen;

import 'home_screen.dart' show HomeScreen;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: splash_screen.splashScreenRoute,
      routes: {
        splash_screen.splashScreenRoute: (context) => splash_screen(),
        HomeScreen.homeScreenRoute: (context) => HomeScreen(),
      },
    );
  }
}


