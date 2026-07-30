import 'package:ecommerce/screens/data/product_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HoodiesScreen extends StatelessWidget {
  const HoodiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              CircleAvatar(
                radius: 22,
                backgroundColor: Colors.grey.withValues(alpha: 0.55),
                child: Icon(Icons.arrow_back, size: 25, color: Colors.white),
              ),
              SizedBox(height: 40),
              Text(
                "Hoodies (240)",
                style: GoogleFonts.gabarito(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,

                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.62,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemCount: hoodiesData.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Product Image
                        Expanded(
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                                child: Image.asset(
                                  hoodiesData[index]["image"],
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),

                              const Positioned(
                                top: 12,
                                right: 12,
                                child: Icon(
                                  Icons.favorite_border,
                                  size: 24,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Product Details
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                hoodiesData[index]["name"],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.gabarito(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                              SizedBox(height: 8),

                              Text(
                                "\$${hoodiesData[index]["price"]}",
                                style: GoogleFonts.gabarito(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
