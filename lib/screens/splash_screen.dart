import 'dart:async';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: WaveClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.55,
              color: const Color(0xFF2E7D6F),
            ),
          ),

          const SizedBox(height: 30),


          const Icon(
            Icons.construction,
            size: 80,
            color: Color(0xFF2E7D6F),
          ),

          const SizedBox(height: 20),


          const Text(
            'Welcome to Sramik',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            'Connecting workers to work',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}


class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 70);

    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 70,
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
