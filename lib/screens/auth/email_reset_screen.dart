import 'package:ecommerce/screens/auth/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailResetScreen extends StatelessWidget {
  const EmailResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 250),
              Image.asset("assets/mail.png", height: 120),

              SizedBox(height: 30),

              Text(
                "We Sent you an Email to reset\nyour password.",
                style: GoogleFonts.gabarito(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 30),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => AuthScreen()),
                  );
                },
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFF8E6CEF),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      "Return to Login",
                      style: GoogleFonts.gabarito(
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
