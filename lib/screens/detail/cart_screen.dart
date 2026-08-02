import 'package:ecommerce/screens/detail/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 80),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => DetailScreen()),
                    );
                  },
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.grey.withValues(alpha: 0.55),
                    child: Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  "Cart",
                  style: GoogleFonts.gabarito(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 40),
                Spacer(),
              ],
            ),

            SizedBox(height: 20),

            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Remove All",
                style: GoogleFonts.gabarito(
                  fontSize: 21,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10),

            Container(
              height: 120,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/harrington.png",
                      height: 100,
                      width: 80,
                    ),
                    Column(
                      children: [
                        Text(
                          "Men's Harrington Jacket",
                          style: GoogleFonts.gabarito(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Size-M   Color-Lemon",
                          style: GoogleFonts.gabarito(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
