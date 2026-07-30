import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 80),
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/men.png"),
              ),
            ),

            SizedBox(height: 50),

            Container(
              height: 120,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          "Bibek Giri",
                          style: GoogleFonts.gabarito(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "giribibek@gmail.com",
                          style: GoogleFonts.gabarito(color: Colors.grey),
                        ),
                        Text(
                          "123-456-789",
                          style: GoogleFonts.gabarito(color: Colors.grey),
                        ),
                      ],
                    ),
                    Text(
                      "Edit",
                      style: GoogleFonts.gabarito(
                        color: Colors.deepPurpleAccent,
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            Container(
              height: 65,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Address",
                      style: GoogleFonts.gabarito(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),

            Container(
              height: 65,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Wishlist",
                      style: GoogleFonts.gabarito(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),

            Container(
              height: 65,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Payment",
                      style: GoogleFonts.gabarito(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),

            Container(
              height: 65,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Help",
                      style: GoogleFonts.gabarito(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),

            Container(
              height: 65,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Support",
                      style: GoogleFonts.gabarito(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined),
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
