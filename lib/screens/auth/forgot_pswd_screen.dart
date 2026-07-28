import 'package:ecommerce/screens/auth/auth_screen.dart';
import 'package:ecommerce/screens/auth/email_reset_screen.dart';
import 'package:ecommerce/screens/auth/signin_screen.dart';
import 'package:flutter/material.dart';

class ForgotPswdScreen extends StatelessWidget {
  const ForgotPswdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => SigninScreen()),
                  );
                },
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.grey.withValues(alpha: 0.55),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Forgot Password",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),

              SizedBox(height: 20),

              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.withValues(alpha: 0.15),
                  hintText: "Enter Email Address",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),

              SizedBox(height: 40),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => EmailResetScreen()),
                  );
                },
                child: Container(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
