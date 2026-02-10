import 'package:flutter/material.dart';
import 'package:sramik_app/screens/splash_screen.dart';

void main() {
  runApp(const SramikApp());
}

class SramikApp extends StatelessWidget {
  const SramikApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
