import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 120),
            Text(
              "Sign In",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),

            SizedBox(height: 20),

            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.withValues(alpha: 0.15),
                hintText: "Email Address",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            SizedBox(height: 20),

            Container(
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Color(0xFF8E6CEF),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(
                child: Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            SizedBox(height: 15),

            RichText(
              text: TextSpan(
                text: "Don't have an Account?",
                style: TextStyle(fontSize: 13, color: Colors.black),
                children: [
                  TextSpan(
                    text: " Create One",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),

            Container(
              margin: EdgeInsets.only(top: 20),
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    "Continue with Apple",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  Positioned(
                    left: 20,
                    child: Image.asset("assets/apple_icon.png"),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20),
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    "Continue with Google",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  Positioned(left: 20, child: Image.asset("assets/google.png")),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20),
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    "Continue with Facebook",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  Positioned(
                    left: 20,
                    child: Image.asset("assets/facebook.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
