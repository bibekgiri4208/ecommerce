import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          "Notifications",
          style: GoogleFonts.gabarito(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/bell_img.png", height: 120, width: 120),

              SizedBox(height: 20),

              Text(
                "No Notification yet",
                style: GoogleFonts.gabarito(fontSize: 26),
              ),

              SizedBox(height: 30),

              Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                  color: Color(0xFF8E6CEF),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Text(
                    "Explore Categories",
                    style: GoogleFonts.gabarito(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
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
