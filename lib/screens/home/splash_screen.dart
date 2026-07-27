import 'package:ecommerce/screens/auth/auth_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => AuthScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8E6CEF),
      body: Center(
        child: Container(
          child: Image.asset(
            "assets/clot.png",
            fit: BoxFit.cover,
            height: 100,
            width: 250,
          ),
        ),
      ),
    );
  }
}
