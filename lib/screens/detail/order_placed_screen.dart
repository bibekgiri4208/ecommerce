import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPlacedScreen extends StatelessWidget {
  const OrderPlacedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8E6CEF),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              child: Image.asset("assets/order.png", height: 300, width: 300),
            ),
          ),
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              child: Container(
                color: Colors.white,
                width: double.maxFinite,
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Text(
                      "Order Placed\nSuccessfully",
                      style: GoogleFonts.gabarito(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "You will recieve an email confirmation",
                      style: GoogleFonts.gabarito(color: Colors.grey),
                    ),

                    SizedBox(height: 60),

                    Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color(0xFF8E6CEF),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text(
                          "See Order Details",
                          style: GoogleFonts.gabarito(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
